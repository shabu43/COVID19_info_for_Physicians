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
    public class ForumList
    {

        public int Add(ForumDBModel _dbModel)
        {
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dCmd = new SqlCommand("SP_SET_TBL_Forum", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                
                //dCmd.Parameters.AddWithValue("@id", _dbModel.id);
                dCmd.Parameters.AddWithValue("@query", _dbModel.query);
                dCmd.Parameters.AddWithValue("@userid", _dbModel.userid);
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

        public List<ForumDBModel> SearchALL(ForumDBModel _dbModel)
        {
            List<ForumDBModel> _modelList = new List<ForumDBModel>();
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dAd = new SqlCommand("SP_SET_TBL_Forum", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dAd);
            dAd.CommandType = CommandType.StoredProcedure;
            dAd.Parameters.AddWithValue("@QryOption", 2);

            DataTable dt = new DataTable();
            try
            {
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    _modelList = (from DataRow row in dt.Rows
                                  select new ForumDBModel
                                  {
                                      id = Convert.ToInt32(row["postid"].ToString()),
                                      query = row["query"].ToString(),
                                      name = row["name"].ToString(),
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
        public int AddReply(ForumDBModel _dbModel)
        {
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dCmd = new SqlCommand("SP_SET_TBL_Forum", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {

                dCmd.Parameters.AddWithValue("@postid", _dbModel.postid);
                dCmd.Parameters.AddWithValue("@reply", _dbModel.reply);
                dCmd.Parameters.AddWithValue("@userid", _dbModel.userid);
                //dCmd.Parameters.AddWithValue("@DateAdded", _dbModel.DateAdded);
                //dCmd.Parameters.AddWithValue("@UpdatedBy", _dbModel.Country);
                //dCmd.Parameters.AddWithValue("@DateUpdated", _dbModel.City);

                //if (_dbModel.AdminID > 0)
                //    dCmd.Parameters.AddWithValue("@QryOption", 2);
                //else
                //    dCmd.Parameters.AddWithValue("@QryOption", 1);
                dCmd.Parameters.AddWithValue("@QryOption", 3);
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
        public List<ForumDBModel> getReply(ForumDBModel _dbModel)
        {
            List<ForumDBModel> _modelList = new List<ForumDBModel>();
            SqlConnection conn = new SqlConnection(DBConnection.GetConnection());
            conn.Open();
            SqlCommand dAd = new SqlCommand("SP_SET_TBL_Forum", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dAd);
            dAd.CommandType = CommandType.StoredProcedure;
            dAd.Parameters.AddWithValue("@postid", _dbModel.postid);
            dAd.Parameters.AddWithValue("@QryOption", 4);

            DataTable dt = new DataTable();
            try
            {
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    _modelList = (from DataRow row in dt.Rows
                                  select new ForumDBModel
                                  {
                                      id = Convert.ToInt32(row["id"].ToString()),
                                      reply = row["reply"].ToString(),
                                      name = row["name"].ToString(),
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
