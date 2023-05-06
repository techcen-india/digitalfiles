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
    public class clsLeadData
    {
        public string Constr = ConfigurationManager.ConnectionStrings["cs"].ConnectionString.ToString();
        public void Add(clsLead obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("Lead_Add", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@MasterId", obj.MasterId);
                        objCmd.Parameters.AddWithValue("@LeadType", obj.LeadType);
                        objCmd.Parameters.AddWithValue("@Lead", obj.Lead);
                        objCmd.Parameters.AddWithValue("@FullName", obj.FullName);
                        objCmd.Parameters.AddWithValue("@Email", obj.Email);
                        objCmd.Parameters.AddWithValue("@Mobile", obj.Mobile);
                        objCmd.Parameters.AddWithValue("@Notes", obj.Notes);
                        objCmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in Add Lead. Details: " + ex.Message);
                    }
                }
            }
        }
        public clsLead Get(clsLead obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("Lead_Get", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@LeadId", obj.LeadId);
                        DataTable objDTable = new DataTable();
                        SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                        objAdp.Fill(objDTable);

                        if (objDTable.Rows.Count > 0)
                        {
                            foreach (DataRow drow in objDTable.Rows)
                            {
                                clsLead objInfo = new clsLead();
                                objInfo.LeadId = Convert.ToInt32(drow["LeadId"]);
                                objInfo.MasterId = Convert.ToInt32(drow["MasterId"]);
                                objInfo.LeadType = Convert.ToString(drow["LeadType"]);
                                objInfo.LeadDate = Convert.ToDateTime(drow["LeadDate"]);
                                objInfo.Lead = Convert.ToString(drow["Lead"]);
                                objInfo.FullName = Convert.ToString(drow["FullName"]);
                                objInfo.Email = Convert.ToString(drow["Email"]);
                                objInfo.Mobile = Convert.ToString(drow["Mobile"]);
                                objInfo.Notes = Convert.ToString(drow["Notes"]);
                                return objInfo;
                            }
                        }
                        return null;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in Get Lead. Details: " + ex.Message);
                    }
                }
            }
        }
        public List<clsLead> GetAll(clsLead obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("Lead_GetAll", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@MasterId", obj.MasterId);
                        objCmd.Parameters.AddWithValue("@LeadType", obj.LeadType);
                        DataTable objDTable = new DataTable();
                        SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                        objAdp.Fill(objDTable);

                        if (objDTable.Rows.Count > 0)
                        {
                            int Sno = 0;
                            List<clsLead> objList = new List<clsLead>();
                            foreach (DataRow drow in objDTable.Rows)
                            {
                                Sno = Sno + 1;
                                clsLead objInfo = new clsLead();
                                objInfo.SNo = Sno;
                                objInfo.LeadId = Convert.ToInt32(drow["LeadId"]);
                                objInfo.MasterId = Convert.ToInt32(drow["MasterId"]);
                                objInfo.LeadType = Convert.ToString(drow["LeadType"]);
                                objInfo.LeadDate = Convert.ToDateTime(drow["LeadDate"]);
                                objInfo.Lead = Convert.ToString(drow["Lead"]);
                                objInfo.FullName = Convert.ToString(drow["FullName"]);
                                objInfo.Email = Convert.ToString(drow["Email"]);
                                objInfo.Mobile = Convert.ToString(drow["Mobile"]);
                                objInfo.Notes = Convert.ToString(drow["Notes"]);
                                objList.Add(objInfo);
                            }
                            return objList;
                        }
                        return null;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in GetAll Lead. Details: " + ex.Message);
                    }
                }
            }
        }

        public void Remove(int Id)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("Lead_Remove", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@LeadId", Id);
                    objCmd.ExecuteNonQuery();
                }
            }
        }

    }
}
