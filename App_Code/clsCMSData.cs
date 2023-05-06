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
    public class clsCMSData
    {
        public string Constr = ConfigurationManager.ConnectionStrings["cs"].ConnectionString.ToString();
        BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
        public void Add(clsCMS obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("CMS_Add", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@MasterId", obj.MasterId);
                        objCmd.Parameters.AddWithValue("@CMSType", obj.CMSType);
                        objCmd.Parameters.AddWithValue("@CMSKey", obj.CMSKey);
                        objCmd.Parameters.AddWithValue("@PageURL", obj.PageURL);
                        objCmd.Parameters.AddWithValue("@MetaTitle", obj.MetaTitle);
                        objCmd.Parameters.AddWithValue("@MetaKeywords", obj.MetaKeywords);
                        objCmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
                        objCmd.Parameters.AddWithValue("@BannerPath", obj.BannerPath);
                        objCmd.Parameters.AddWithValue("@Imagepath", obj.ImagePath);
                        objCmd.Parameters.AddWithValue("@CMSName", obj.CMSName);
                        objCmd.Parameters.AddWithValue("@CMSDate", obj.CMSDate);
                        objCmd.Parameters.AddWithValue("@SubTitle", obj.SubTitle);
                        objCmd.Parameters.AddWithValue("@ShortText", obj.ShortText);
                        objCmd.Parameters.AddWithValue("@Location", obj.Location);
                        objCmd.Parameters.AddWithValue("@Company", obj.Company);
                        objCmd.Parameters.AddWithValue("@Fee", obj.Fee);
                        objCmd.Parameters.AddWithValue("@Status", obj.Status);
                        objCmd.Parameters.AddWithValue("@Highlights", obj.Highlights);
                        objCmd.Parameters.AddWithValue("@Features", obj.Features);
                        objCmd.Parameters.AddWithValue("@CMSContent", obj.CMSContent);
                        objCmd.Parameters.AddWithValue("@PDFPath", obj.PDFPath);
                        objCmd.Parameters.AddWithValue("@VideoPath", obj.VideoPath);
                        objCmd.Parameters.AddWithValue("@BrochurePath", obj.BrochurePath);
                        objCmd.Parameters.AddWithValue("@RoadmapPath", obj.RoadmapPath);
                        objCmd.Parameters.AddWithValue("@GoogleMapLink", obj.GoogleMapLink);
                        objCmd.Parameters.AddWithValue("@LayoutPath", obj.LayoutPath);
                        objCmd.Parameters.AddWithValue("@ContactName", obj.ContactName);
                        objCmd.Parameters.AddWithValue("@ContactDesignation", obj.ContactDesignation);
                        objCmd.Parameters.AddWithValue("@Email", obj.Email);
                        objCmd.Parameters.AddWithValue("@Phone", obj.Phone);
                        objCmd.Parameters.AddWithValue("@Mobile", obj.Mobile);
                        objCmd.Parameters.AddWithValue("@Whatsup", obj.Whatsup);
                        objCmd.Parameters.AddWithValue("@Website", obj.Website);
                        objCmd.Parameters.AddWithValue("@ImagePath1", obj.ImagePath1);
                        objCmd.Parameters.AddWithValue("@ImagePath2", obj.ImagePath2);
                        objCmd.Parameters.AddWithValue("@ImagePath3", obj.ImagePath3);
                        objCmd.Parameters.AddWithValue("@ImagePath4", obj.ImagePath4);
                        objCmd.Parameters.AddWithValue("@ImagePath5", obj.ImagePath5);
                        objCmd.Parameters.AddWithValue("@Services", obj.Services);
                        objCmd.Parameters.AddWithValue("@Approval", obj.Approval);
                        objCmd.Parameters.AddWithValue("@Service1", obj.Service1);
                        objCmd.Parameters.AddWithValue("@Service2", obj.Service2);
                        objCmd.Parameters.AddWithValue("@Service3", obj.Service3);
                        objCmd.Parameters.AddWithValue("@Service4", obj.Service4);
                        objCmd.Parameters.AddWithValue("@Service5", obj.Service5);
                        objCmd.Parameters.AddWithValue("@CustomField1", obj.CustomField1);
                        objCmd.Parameters.AddWithValue("@CustomField2", obj.CustomField2);
                        objCmd.Parameters.AddWithValue("@CustomField3", obj.CustomField3);
                        objCmd.Parameters.AddWithValue("@CustomField4", obj.CustomField4);
                        objCmd.Parameters.AddWithValue("@CustomField5", obj.CustomField5);
                        objCmd.Parameters.AddWithValue("@CustomField6", obj.CustomField6);
                        objCmd.Parameters.AddWithValue("@CustomField7", obj.CustomField7);
                        objCmd.Parameters.AddWithValue("@CustomField8", obj.CustomField8);
                        objCmd.Parameters.AddWithValue("@CustomField9", obj.CustomField9);
                        objCmd.Parameters.AddWithValue("@CustomField10", obj.CustomField10);
                        objCmd.Parameters.AddWithValue("@Heading", obj.Heading);
                        objCmd.Parameters.AddWithValue("@Subheading", obj.Subheading);
                        objCmd.Parameters.AddWithValue("@Duration", obj.Duration);
                        objCmd.Parameters.AddWithValue("@Trainingmode", obj.Trainingmode);
                        objCmd.Parameters.AddWithValue("@Teachinglanguage", obj.Teachinglanguage);
                        objCmd.Parameters.AddWithValue("@ClassDuration", obj.ClassDuration);
                        objCmd.Parameters.AddWithValue("@Noofstudents", obj.Noofstudents);
                        objCmd.Parameters.AddWithValue("@Courseovereview", obj.Courseovereview);
                        objCmd.Parameters.AddWithValue("@Coursedetails", obj.Coursedetails);
                        objCmd.Parameters.AddWithValue("@Coursetopics", obj.Coursetopics);
                        objCmd.Parameters.AddWithValue("@Careerpath", obj.Careerpath);
                        objCmd.Parameters.AddWithValue("@Faq1", obj.Faq1);
                        objCmd.Parameters.AddWithValue("@Faq1ans", obj.Faq1ans);
                        objCmd.Parameters.AddWithValue("@Faq2", obj.Faq2);
                        objCmd.Parameters.AddWithValue("@Faq2ans", obj.Faq2ans);
                        objCmd.Parameters.AddWithValue("@Faq3", obj.Faq3);
                        objCmd.Parameters.AddWithValue("@Faq3ans", obj.Faq3ans);
                        objCmd.Parameters.AddWithValue("@Faq4", obj.Faq4);
                        objCmd.Parameters.AddWithValue("@Faq4ans", obj.Faq4ans);
                        objCmd.Parameters.AddWithValue("@Faq5", obj.Faq5);
                        objCmd.Parameters.AddWithValue("@Faq5ans", obj.Faq5ans);
                        objCmd.Parameters.AddWithValue("@CurrentUserId", CurrentUser.CurrentUserId);
                        objCmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in Add CMS. Details: " + ex.Message);
                    }
                }
            }
        }
        public void Update(clsCMS obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("CMS_Edit", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@CMSId", obj.CMSId);
                        objCmd.Parameters.AddWithValue("@MasterId", obj.MasterId);
                        objCmd.Parameters.AddWithValue("@CMSType", obj.CMSType);
                        objCmd.Parameters.AddWithValue("@CMSKey", obj.CMSKey);
                        objCmd.Parameters.AddWithValue("@PageURL", obj.PageURL);
                        objCmd.Parameters.AddWithValue("@MetaTitle", obj.MetaTitle);
                        objCmd.Parameters.AddWithValue("@MetaKeywords", obj.MetaKeywords);
                        objCmd.Parameters.AddWithValue("@MetaDescription", obj.MetaDescription);
                        objCmd.Parameters.AddWithValue("@BannerPath", obj.BannerPath);
                        objCmd.Parameters.AddWithValue("@Imagepath", obj.ImagePath);
                        objCmd.Parameters.AddWithValue("@CMSName", obj.CMSName);
                        objCmd.Parameters.AddWithValue("@CMSDate", obj.CMSDate);
                        objCmd.Parameters.AddWithValue("@SubTitle", obj.SubTitle);
                        objCmd.Parameters.AddWithValue("@ShortText", obj.ShortText);
                        objCmd.Parameters.AddWithValue("@Location", obj.Location);
                        objCmd.Parameters.AddWithValue("@Company", obj.Company);
                        objCmd.Parameters.AddWithValue("@Fee", obj.Fee);
                        objCmd.Parameters.AddWithValue("@Status", obj.Status);
                        objCmd.Parameters.AddWithValue("@Highlights", obj.Highlights);
                        objCmd.Parameters.AddWithValue("@Features", obj.Features);
                        objCmd.Parameters.AddWithValue("@CMSContent", obj.CMSContent);
                        objCmd.Parameters.AddWithValue("@PDFPath", obj.PDFPath);
                        objCmd.Parameters.AddWithValue("@VideoPath", obj.VideoPath);
                        objCmd.Parameters.AddWithValue("@BrochurePath", obj.BrochurePath);
                        objCmd.Parameters.AddWithValue("@RoadmapPath", obj.RoadmapPath);
                        objCmd.Parameters.AddWithValue("@GoogleMapLink", obj.GoogleMapLink);
                        objCmd.Parameters.AddWithValue("@LayoutPath", obj.LayoutPath);
                        objCmd.Parameters.AddWithValue("@ContactName", obj.ContactName);
                        objCmd.Parameters.AddWithValue("@ContactDesignation", obj.ContactDesignation);
                        objCmd.Parameters.AddWithValue("@Email", obj.Email);
                        objCmd.Parameters.AddWithValue("@Phone", obj.Phone);
                        objCmd.Parameters.AddWithValue("@Mobile", obj.Mobile);
                        objCmd.Parameters.AddWithValue("@Whatsup", obj.Whatsup);
                        objCmd.Parameters.AddWithValue("@Website", obj.Website);
                        objCmd.Parameters.AddWithValue("@Services", obj.Services);
                        objCmd.Parameters.AddWithValue("@Approval", obj.Approval);
                        objCmd.Parameters.AddWithValue("@ImagePath1", obj.ImagePath1);
                        objCmd.Parameters.AddWithValue("@ImagePath2", obj.ImagePath2);
                        objCmd.Parameters.AddWithValue("@ImagePath3", obj.ImagePath3);
                        objCmd.Parameters.AddWithValue("@ImagePath4", obj.ImagePath4);
                        objCmd.Parameters.AddWithValue("@ImagePath5", obj.ImagePath5);
                        objCmd.Parameters.AddWithValue("@Service1", obj.Service1);
                        objCmd.Parameters.AddWithValue("@Service2", obj.Service2);
                        objCmd.Parameters.AddWithValue("@Service3", obj.Service3);
                        objCmd.Parameters.AddWithValue("@Service4", obj.Service4);
                        objCmd.Parameters.AddWithValue("@Service5", obj.Service5);
                        objCmd.Parameters.AddWithValue("@CustomField1", obj.CustomField1);
                        objCmd.Parameters.AddWithValue("@CustomField2", obj.CustomField2);
                        objCmd.Parameters.AddWithValue("@CustomField3", obj.CustomField3);
                        objCmd.Parameters.AddWithValue("@CustomField4", obj.CustomField4);
                        objCmd.Parameters.AddWithValue("@CustomField5", obj.CustomField5);
                        objCmd.Parameters.AddWithValue("@CustomField6", obj.CustomField6);
                        objCmd.Parameters.AddWithValue("@CustomField7", obj.CustomField7);
                        objCmd.Parameters.AddWithValue("@CustomField8", obj.CustomField8);
                        objCmd.Parameters.AddWithValue("@CustomField9", obj.CustomField9);
                        objCmd.Parameters.AddWithValue("@CustomField10", obj.CustomField10);
                        objCmd.Parameters.AddWithValue("@Heading", obj.Heading);
                        objCmd.Parameters.AddWithValue("@Subheading", obj.Subheading);
                        objCmd.Parameters.AddWithValue("@Duration", obj.Duration);
                        objCmd.Parameters.AddWithValue("@Trainingmode", obj.Trainingmode);
                        objCmd.Parameters.AddWithValue("@Teachinglanguage", obj.Teachinglanguage);
                        objCmd.Parameters.AddWithValue("@ClassDuration", obj.ClassDuration);
                        objCmd.Parameters.AddWithValue("@Noofstudents", obj.Noofstudents);
                        objCmd.Parameters.AddWithValue("@Courseovereview", obj.Courseovereview);
                        objCmd.Parameters.AddWithValue("@Coursedetails", obj.Coursedetails);
                        objCmd.Parameters.AddWithValue("@Coursetopics", obj.Coursetopics);
                        objCmd.Parameters.AddWithValue("@Careerpath", obj.Careerpath);
                        objCmd.Parameters.AddWithValue("@Faq1", obj.Faq1);
                        objCmd.Parameters.AddWithValue("@Faq1ans", obj.Faq1ans);
                        objCmd.Parameters.AddWithValue("@Faq2", obj.Faq2);
                        objCmd.Parameters.AddWithValue("@Faq2ans", obj.Faq2ans);
                        objCmd.Parameters.AddWithValue("@Faq3", obj.Faq3);
                        objCmd.Parameters.AddWithValue("@Faq3ans", obj.Faq3ans);
                        objCmd.Parameters.AddWithValue("@Faq4", obj.Faq4);
                        objCmd.Parameters.AddWithValue("@Faq4ans", obj.Faq4ans);
                        objCmd.Parameters.AddWithValue("@Faq5", obj.Faq5);
                        objCmd.Parameters.AddWithValue("@Faq5ans", obj.Faq5ans);
                        objCmd.Parameters.AddWithValue("@CurrentUserId", CurrentUser.CurrentUserId);
                        objCmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in Add CMS. Details: " + ex.Message);
                    }
                }
            }
        }
        public clsCMS Get(clsCMS obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("CMS_Get", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@CMSType", obj.CMSType);
                        objCmd.Parameters.AddWithValue("@CMSId", obj.CMSId);
                        objCmd.Parameters.AddWithValue("@CMSKey", obj.CMSKey);
                        objCmd.Parameters.AddWithValue("@PageURL", obj.PageURL);
                        DataTable objDTable = new DataTable();
                        SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                        objAdp.Fill(objDTable);

                        if (objDTable.Rows.Count > 0)
                        {
                            foreach (DataRow drow in objDTable.Rows)
                            {
                                clsCMS objInfo = new clsCMS();
                                objInfo.CMSId = Convert.ToInt32(drow["CMSId"]);
                                objInfo.MasterId = Convert.ToInt32(drow["MasterId"]);
                                objInfo.CMSType = Convert.ToString(drow["CMSType"]);
                                objInfo.CMSKey = Convert.ToString(drow["CMSKey"]);
                                objInfo.PageURL = Convert.ToString(drow["PageURL"]);
                                objInfo.MetaTitle = Convert.ToString(drow["MetaTitle"]);
                                objInfo.MetaKeywords = Convert.ToString(drow["MetaKeywords"]);
                                objInfo.MetaDescription = Convert.ToString(drow["MetaDescription"]);
                                objInfo.BannerPath = Convert.ToString(drow["Bannerpath"]);
                                objInfo.ImagePath = Convert.ToString(drow["ImagePath"]);
                                objInfo.CMSName = Convert.ToString(drow["CMSName"]);
                                if (drow.IsNull("CMSDate") == false)
                                {
                                    objInfo.CMSDate = Convert.ToDateTime(drow["CMSDate"]);
                                }
                                objInfo.SubTitle = Convert.ToString(drow["SubTitle"]);
                                objInfo.ShortText = Convert.ToString(drow["ShortText"]);
                                objInfo.Location = Convert.ToString(drow["Location"]);
                                objInfo.Company = Convert.ToString(drow["Company"]);
                                objInfo.Fee = Convert.ToString(drow["Fee"]);
                                objInfo.Status = Convert.ToString(drow["Status"]);
                                objInfo.Highlights = Convert.ToString(drow["Highlights"]);
                                objInfo.Features = Convert.ToString(drow["Features"]);
                                objInfo.CMSContent = Convert.ToString(drow["CMSContent"]);
                                objInfo.PDFPath = Convert.ToString(drow["PDFPath"]);
                                objInfo.VideoPath = Convert.ToString(drow["VideoPath"]);
                                objInfo.BrochurePath = Convert.ToString(drow["BrochurePath"]);
                                objInfo.RoadmapPath = Convert.ToString(drow["RoadmapPath"]);
                                objInfo.GoogleMapLink = Convert.ToString(drow["GoogleMapLink"]);
                                objInfo.LayoutPath = Convert.ToString(drow["LayoutPath"]);
                                objInfo.ContactName = Convert.ToString(drow["ContactName"]);
                                objInfo.ContactDesignation = Convert.ToString(drow["ContactDesignation"]);
                                objInfo.Email = Convert.ToString(drow["Email"]);
                                objInfo.Phone = Convert.ToString(drow["Phone"]);
                                objInfo.Mobile = Convert.ToString(drow["Mobile"]);
                                objInfo.Whatsup = Convert.ToString(drow["Whatsup"]);
                                objInfo.Website = Convert.ToString(drow["Website"]);
                                objInfo.Services = Convert.ToString(drow["Services"]);
                                objInfo.Approval = Convert.ToString(drow["Approval"]);
                                objInfo.ImagePath1 = Convert.ToString(drow["ImagePath1"]);
                                objInfo.ImagePath2 = Convert.ToString(drow["ImagePath2"]);
                                objInfo.ImagePath3 = Convert.ToString(drow["ImagePath3"]);
                                objInfo.ImagePath4 = Convert.ToString(drow["ImagePath4"]);
                                objInfo.ImagePath5 = Convert.ToString(drow["ImagePath5"]);
                                objInfo.Service1 = Convert.ToString(drow["Service1"]);
                                objInfo.Service2 = Convert.ToString(drow["Service2"]);
                                objInfo.Service3 = Convert.ToString(drow["Service3"]);
                                objInfo.Service4 = Convert.ToString(drow["Service4"]);
                                objInfo.Service5 = Convert.ToString(drow["Service5"]);
                                objInfo.CustomField1 = Convert.ToString(drow["CustomField1"]);
                                objInfo.CustomField2 = Convert.ToString(drow["CustomField2"]);
                                objInfo.CustomField3 = Convert.ToString(drow["CustomField3"]);
                                objInfo.CustomField4 = Convert.ToString(drow["CustomField4"]);
                                objInfo.CustomField5 = Convert.ToString(drow["CustomField5"]);
                                objInfo.CustomField6 = Convert.ToString(drow["CustomField6"]);
                                objInfo.CustomField7 = Convert.ToString(drow["CustomField7"]);
                                objInfo.CustomField8 = Convert.ToString(drow["CustomField8"]);
                                objInfo.CustomField9 = Convert.ToString(drow["CustomField9"]);
                                objInfo.CustomField10 = Convert.ToString(drow["CustomField10"]);
                                objInfo.Heading = Convert.ToString(drow["Heading"]);
                                objInfo.Subheading = Convert.ToString(drow["Subheading"]);
                                objInfo.Duration = Convert.ToString(drow["Duration"]);
                                objInfo.Trainingmode = Convert.ToString(drow["Trainingmode"]);
                                objInfo.Teachinglanguage = Convert.ToString(drow["Teachinglanguage"]);
                                objInfo.ClassDuration = Convert.ToString(drow["ClassDuration"]);
                                objInfo.Noofstudents = Convert.ToString(drow["Noofstudents"]);
                                objInfo.Courseovereview = Convert.ToString(drow["Courseovereview"]);
                                objInfo.Coursedetails = Convert.ToString(drow["Coursedetails"]);
                                objInfo.Coursetopics = Convert.ToString(drow["Coursetopics"]);
                                objInfo.Careerpath = Convert.ToString(drow["Careerpath"]);
                                objInfo.Faq1 = Convert.ToString(drow["Faq1"]);
                                objInfo.Faq1ans = Convert.ToString(drow["Faq1ans"]);
                                objInfo.Faq2 = Convert.ToString(drow["Faq2"]);
                                objInfo.Faq2ans = Convert.ToString(drow["Faq2ans"]);
                                objInfo.Faq3 = Convert.ToString(drow["Faq3"]);
                                objInfo.Faq3ans = Convert.ToString(drow["Faq3ans"]);
                                objInfo.Faq4 = Convert.ToString(drow["Faq4"]);
                                objInfo.Faq4ans = Convert.ToString(drow["Faq4ans"]);
                                objInfo.Faq5 = Convert.ToString(drow["Faq5"]);
                                objInfo.Faq5ans = Convert.ToString(drow["Faq5ans"]);
                                return objInfo;
                            }
                        }
                        return null;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in Get CMS. Details: " + ex.Message);
                    }
                }
            }
        }
        public List<clsCMS> GetAll(clsCMS obj)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("CMS_GetAll", objConn))
                {
                    try
                    {
                        objConn.Open();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.Parameters.AddWithValue("@MasterId", obj.MasterId);
                        objCmd.Parameters.AddWithValue("@CMSType", obj.CMSType);
                        DataTable objDTable = new DataTable();
                        SqlDataAdapter objAdp = new SqlDataAdapter(objCmd);
                        objAdp.Fill(objDTable);

                        if (objDTable.Rows.Count > 0)
                        {
                            int SNo = 0;
                            List<clsCMS> objList = new List<clsCMS>();
                            foreach (DataRow drow in objDTable.Rows)
                            {
                                SNo = SNo + 1;
                                clsCMS objInfo = new clsCMS();
                                objInfo.SNo = SNo;
                                objInfo.CMSId = Convert.ToInt32(drow["CMSId"]);
                                objInfo.MasterId = Convert.ToInt32(drow["MasterId"]);
                                objInfo.CMSType = Convert.ToString(drow["CMSType"]);
                                objInfo.CMSKey = Convert.ToString(drow["CMSKey"]);
                                objInfo.PageURL = Convert.ToString(drow["PageURL"]);
                                objInfo.MetaTitle = Convert.ToString(drow["MetaTitle"]);
                                objInfo.MetaKeywords = Convert.ToString(drow["MetaKeywords"]);
                                objInfo.MetaDescription = Convert.ToString(drow["MetaDescription"]);
                                objInfo.BannerPath = Convert.ToString(drow["Bannerpath"]);
                                objInfo.ImagePath = Convert.ToString(drow["ImagePath"]);
                                objInfo.CMSName = Convert.ToString(drow["CMSName"]);
                                if (drow.IsNull("CMSDate") == false)
                                {
                                    objInfo.CMSDate = Convert.ToDateTime(drow["CMSDate"]);
                                }
                                objInfo.SubTitle = Convert.ToString(drow["SubTitle"]);
                                objInfo.ShortText = Convert.ToString(drow["ShortText"]);
                                objInfo.Location = Convert.ToString(drow["Location"]);
                                objInfo.Company = Convert.ToString(drow["Company"]);
                                objInfo.Fee = Convert.ToString(drow["Fee"]);
                                objInfo.Status = Convert.ToString(drow["Status"]);
                                objInfo.PDFPath = Convert.ToString(drow["PDFPath"]);
                                objInfo.VideoPath = Convert.ToString(drow["VideoPath"]);
                                objInfo.BrochurePath = Convert.ToString(drow["BrochurePath"]);
                                objInfo.RoadmapPath = Convert.ToString(drow["RoadmapPath"]);
                                objInfo.GoogleMapLink = Convert.ToString(drow["GoogleMapLink"]);
                                objInfo.LayoutPath = Convert.ToString(drow["LayoutPath"]);
                                objInfo.ContactName = Convert.ToString(drow["ContactName"]);
                                objInfo.ContactDesignation = Convert.ToString(drow["ContactDesignation"]);
                                objInfo.Email = Convert.ToString(drow["Email"]);
                                objInfo.Phone = Convert.ToString(drow["Phone"]);
                                objInfo.Mobile = Convert.ToString(drow["Mobile"]);
                                objInfo.Whatsup = Convert.ToString(drow["Whatsup"]);
                                objInfo.Website = Convert.ToString(drow["Website"]);
                                objInfo.Services = Convert.ToString(drow["Services"]);
                                objInfo.Approval = Convert.ToString(drow["Approval"]);
                                objInfo.ImagePath1 = Convert.ToString(drow["ImagePath1"]);
                                objInfo.ImagePath2 = Convert.ToString(drow["ImagePath2"]);
                                objInfo.ImagePath3 = Convert.ToString(drow["ImagePath3"]);
                                objInfo.ImagePath4 = Convert.ToString(drow["ImagePath4"]);
                                objInfo.ImagePath5 = Convert.ToString(drow["ImagePath5"]);
                                objInfo.Service1 = Convert.ToString(drow["Service1"]);
                                objInfo.Service2 = Convert.ToString(drow["Service2"]);
                                objInfo.Service3 = Convert.ToString(drow["Service3"]);
                                objInfo.Service4 = Convert.ToString(drow["Service4"]);
                                objInfo.Service5 = Convert.ToString(drow["Service5"]);
                                objInfo.CustomField1 = Convert.ToString(drow["CustomField1"]);
                                objInfo.CustomField2 = Convert.ToString(drow["CustomField2"]);
                                objInfo.CustomField3 = Convert.ToString(drow["CustomField3"]);
                                objInfo.CustomField4 = Convert.ToString(drow["CustomField4"]);
                                objInfo.CustomField5 = Convert.ToString(drow["CustomField5"]);
                                objInfo.CustomField6 = Convert.ToString(drow["CustomField6"]);
                                objInfo.CustomField7 = Convert.ToString(drow["CustomField7"]);
                                objInfo.CustomField8 = Convert.ToString(drow["CustomField8"]);
                                objInfo.CustomField9 = Convert.ToString(drow["CustomField9"]);
                                objInfo.CustomField10 = Convert.ToString(drow["CustomField10"]);
                                objInfo.Heading = Convert.ToString(drow["Heading"]);
                                objInfo.Subheading = Convert.ToString(drow["Subheading"]);
                                objInfo.Duration = Convert.ToString(drow["Duration"]);
                                objInfo.Trainingmode = Convert.ToString(drow["Trainingmode"]);
                                objInfo.Teachinglanguage = Convert.ToString(drow["Teachinglanguage"]);
                                objInfo.ClassDuration = Convert.ToString(drow["ClassDuration"]);
                                objInfo.Noofstudents = Convert.ToString(drow["Noofstudents"]);
                                objInfo.Courseovereview = Convert.ToString(drow["Courseovereview"]);
                                objInfo.Coursedetails = Convert.ToString(drow["Coursedetails"]);
                                objInfo.Coursetopics = Convert.ToString(drow["Coursetopics"]);
                                objInfo.Careerpath = Convert.ToString(drow["Careerpath"]);
                                objInfo.Faq1 = Convert.ToString(drow["Faq1"]);
                                objInfo.Faq1ans = Convert.ToString(drow["Faq1ans"]);
                                objInfo.Faq2 = Convert.ToString(drow["Faq2"]);
                                objInfo.Faq2ans = Convert.ToString(drow["Faq2ans"]);
                                objInfo.Faq3 = Convert.ToString(drow["Faq3"]);
                                objInfo.Faq3ans = Convert.ToString(drow["Faq3ans"]);
                                objInfo.Faq4 = Convert.ToString(drow["Faq4"]);
                                objInfo.Faq4ans = Convert.ToString(drow["Faq4ans"]);
                                objInfo.Faq5 = Convert.ToString(drow["Faq5"]);
                                objInfo.Faq5ans = Convert.ToString(drow["Faq5ans"]);
                                objList.Add(objInfo);
                            }
                            return objList;
                        }
                        return null;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error in GetAll CMS. Details: " + ex.Message);
                    }
                }
            }
        }
        public void Remove(int Id)
        {
            using (SqlConnection objConn = new SqlConnection(Constr))
            {
                using (SqlCommand objCmd = new SqlCommand("CMS_Remove", objConn))
                {
                    objConn.Open();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@CMSId", Id);
                    objCmd.ExecuteNonQuery();
                }
            }
        }
    }
}
