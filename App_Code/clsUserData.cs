using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.Collections.Generic;
using BusinessLayer;

namespace DataLayer
{
    public class clsUserData
    {
        public string Constr = ConfigurationManager.ConnectionStrings["cs"].ConnectionString.ToString();

        public virtual void Add(clsUser obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_Add", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@Username", obj.Username);
                    objCmd.Parameters.AddWithValue("@Pwd", obj.Pwd);
                    objCmd.Parameters.AddWithValue("@Fullname", obj.Fullname);
                    objCmd.ExecuteNonQuery();
                }
            }
        }

        public virtual clsUser Get(int Id)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_Get", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@UserId", Id);
                    DataSet objDset = new DataSet();
                    SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                    objAdp.Fill(objDset);
                    if (objDset.Tables.Count > 0)
                    {
                        if (objDset.Tables[0].Rows.Count > 0)
                        {
                            clsUser objInfo = new clsUser();
                            objInfo.UserId = Convert.ToInt32(objDset.Tables[0].Rows[0].ItemArray[0]);
                            objInfo.Username = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[1]);
                            objInfo.Pwd = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[2]);
                            objInfo.Fullname = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[3]);
                            return objInfo;
                        }
                    }
                    return null;
                }
            }
        }

        public virtual List<clsUser> GetAll(clsUser obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_List", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    DataSet objDset = new DataSet();
                    SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                    objAdp.Fill(objDset);
                    if (objDset.Tables.Count > 0)
                    {
                        if (objDset.Tables[0].Rows.Count > 0)
                        {
                            List<clsUser> objList = new List<clsUser>();
                            for (int cnt = 0; cnt < objDset.Tables[0].Rows.Count; cnt++)
                            {
                                clsUser objInfo = new clsUser();
                                objInfo.SNo = cnt + 1;
                                objInfo.UserId = Convert.ToInt32(objDset.Tables[0].Rows[cnt].ItemArray[0]);
                                objInfo.Username = Convert.ToString(objDset.Tables[0].Rows[cnt].ItemArray[1]);
                                objInfo.Fullname = Convert.ToString(objDset.Tables[0].Rows[cnt].ItemArray[2]);
                                objInfo.CreatedOn = Convert.ToDateTime(objDset.Tables[0].Rows[cnt].ItemArray[3]);
                                objList.Add(objInfo);
                            }
                            return objList;
                        }
                    }
                    return null;
                }
            }
        }

        public virtual void Remove(int Id)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_Remove", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@UserId", Id);
                    objCmd.ExecuteNonQuery();
                }
            }
        }

        public clsUser CheckExist(string Username)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_CheckExists", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@Username", Username);
                    DataSet objDset = new DataSet();
                    SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                    objAdp.Fill(objDset);
                    if (objDset.Tables.Count > 0)
                    {
                        if (objDset.Tables[0].Rows.Count > 0)
                        {
                            clsUser objInfo = new clsUser();
                            objInfo.UserId = Convert.ToInt32(objDset.Tables[0].Rows[0].ItemArray[0]);
                            objInfo.Username = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[1]);
                            objInfo.Fullname = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[2]);
                            objInfo.RoleId = Convert.ToInt32(objDset.Tables[0].Rows[0].ItemArray[3]);
                            return objInfo;
                        }
                    }
                    return null;
                }
            }
        }

        public virtual clsUser CheckValidate(clsUser obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_Validate", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@Username", obj.Username);
                    objCmd.Parameters.AddWithValue("@Pwd", obj.Pwd);
                    DataSet objDset = new DataSet();
                    SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                    objAdp.Fill(objDset);
                    if (objDset.Tables.Count > 0)
                    {
                        if (objDset.Tables[0].Rows.Count > 0)
                        {
                            clsUser objInfo = new clsUser();
                            objInfo.UserId = Convert.ToInt32(objDset.Tables[0].Rows[0].ItemArray[0]);
                            objInfo.Username = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[1]);
                            objInfo.Fullname = Convert.ToString(objDset.Tables[0].Rows[0].ItemArray[2]);
                            return objInfo;
                        }
                    }
                    return null;
                }
            }
        }

        public virtual string ChangePassword(clsUser obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("User_PasswordUpdate", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@UserId", obj.UserId);
                    objCmd.Parameters.AddWithValue("@Pwd", obj.Pwd);
                    objCmd.Parameters.AddWithValue("@NewPwd", obj.NewPwd);

                    SqlParameter paramout = new SqlParameter("@Out_msg", SqlDbType.VarChar, 500);
                    paramout.Direction = ParameterDirection.Output;
                    objCmd.Parameters.Add(paramout);
                    objCmd.ExecuteNonQuery();
                    string outmsg = paramout.SqlValue.ToString();
                    return outmsg;
                }
            }
        }

    }
}
