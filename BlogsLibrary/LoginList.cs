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
    public class LoginList
    {

        public int Add(LoginDBModel _dbModel)
        {
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dCmd = new SqlCommand("SP_SET_TBL_user", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                //dCmd.Parameters.AddWithValue("@id", _dbModel.id);
                dCmd.Parameters.AddWithValue("@name", _dbModel.name);
                dCmd.Parameters.AddWithValue("@email", _dbModel.email);
                dCmd.Parameters.AddWithValue("@password", _dbModel.password);
                //dCmd.Parameters.AddWithValue("@DateAdded", _dbModel.DateAdded);
                //dCmd.Parameters.AddWithValue("@UpdatedBy", _dbModel.Country);
                //dCmd.Parameters.AddWithValue("@DateUpdated", _dbModel.City);

                //if (_dbModel.AdminID > 0)
                //    dCmd.Parameters.AddWithValue("@QryOption", 2);
                //else
                //    dCmd.Parameters.AddWithValue("@QryOption", 1);
                dCmd.Parameters.AddWithValue("@QryOption", 1);
                return dCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                //UtilityOptions.ErrorLog(ex.ToString(), MethodBase.GetCurrentMethod().Name);
                throw ex;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        public List<LoginDBModel> Loginuser(LoginDBModel _dbModel)
        {
            List<LoginDBModel> _modelList = new List<LoginDBModel>();
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dAd = new SqlCommand("SP_SET_TBL_user", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dAd);
            dAd.CommandType = CommandType.StoredProcedure;
            dAd.Parameters.AddWithValue("@email", _dbModel.email);
            dAd.Parameters.AddWithValue("@password", _dbModel.password);
            dAd.Parameters.AddWithValue("@QryOption", 2);

            DataTable dt = new DataTable();
            try
            {
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    _modelList = (from DataRow row in dt.Rows
                                  select new LoginDBModel
                                  {
                                      id = Convert.ToInt32(row["id"].ToString()),
                                      name = row["name"].ToString(),
                                      email = row["email"].ToString(),
                                      password = row["password"].ToString(),

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
        public List<LoginDBModel> Verify(LoginDBModel _dbModel)
        {
            List<LoginDBModel> _modelList = new List<LoginDBModel>();
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dAd = new SqlCommand("SP_SET_TBL_user", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dAd);
            dAd.CommandType = CommandType.StoredProcedure;
            dAd.Parameters.AddWithValue("@email", _dbModel.email);
            dAd.Parameters.AddWithValue("@password", _dbModel.password);
            dAd.Parameters.AddWithValue("@QryOption", 3);

            DataTable dt = new DataTable();
            try
            {
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    _modelList = (from DataRow row in dt.Rows
                                  select new LoginDBModel
                                  {
                                      id = Convert.ToInt32(row["id"].ToString()),
                                      name = row["name"].ToString(),
                                      email = row["email"].ToString(),
                                      password = row["password"].ToString(),

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
