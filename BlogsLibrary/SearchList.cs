using BlogCommon;
using BlogDBModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlogsLibrary
{
    public class SearchList
    {

        public List<SearchDBModel> SearchALL(SearchDBModel _dbModel)
        {
            List<SearchDBModel> _modelList = new List<SearchDBModel>();
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dAd = new SqlCommand("SP_SET_Search", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dAd);
            dAd.CommandType = CommandType.StoredProcedure;
            dAd.Parameters.AddWithValue("@QryOption", _dbModel.AddedBy);

            DataTable dt = new DataTable();
            try
            {
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    _modelList = (from DataRow row in dt.Rows
                                  select new SearchDBModel
                                  {
                                      id = Convert.ToInt32(row["id"].ToString()),
                                      title = row["title"].ToString(),
                                      description = row["description"].ToString(),
                                      AddedBy = row["AddedBy"].ToString(),
                                      DateAdded = row["DateAdded"].ToString(),

                                  }).ToList();
                }
                return _modelList;
            }
            catch (Exception ex)
            {
                //UtilityOptions.ErrorLog(ex.ToString(), MethodBase.GetCurrentMethod().Name);
                throw ex;
            }
            finally
            {
                dt.Dispose();
                dAd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

    }
}
