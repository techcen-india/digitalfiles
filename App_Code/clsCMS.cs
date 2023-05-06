using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using DataLayer;

namespace BusinessLayer
{
    public class clsCMS
    {
        clsCMSData objDAL = new clsCMSData();
        public int SNo { get; set; }
        public int CMSId { get; set; }
        public string CMSType { get; set; }
        public string CMSKey { get; set; }
        public string PageURL { get; set; }
        public string FullURL { get; set; }
        public int MasterId { get; set; }
        public string MetaTitle { get; set; }
        public string MetaKeywords { get; set; }
        public string MetaDescription { get; set; }
        public string BannerPath { get; set; }
        public string ImagePath { get; set; }
        public string CMSName { get; set; }
        public DateTime? CMSDate { get; set; }
        public string SubTitle { get; set; }
        public string ShortText { get; set; }
        public string Heading { get; set; }
        public string Subheading { get; set; }
        public string Location { get; set; }
        public string Fee { get; set; }
        public string Duration { get; set; }
        public string Trainingmode { get; set; }
        public string Teachinglanguage { get; set; }
        public string ClassDuration { get; set; }
        public string Noofstudents { get; set; }
        public string Courseovereview { get; set; }
        public string Coursedetails { get; set; }
        public string Coursetopics { get; set; }
        public string Careerpath { get; set; }
        public string Faq1 { get; set; }
        public string Faq1ans { get; set; }
        public string Faq2 { get; set; }
        public string Faq2ans { get; set; }
        public string Faq3 { get; set; }
        public string Faq3ans { get; set; }
        public string Faq4 { get; set; }
        public string Faq4ans { get; set; }
        public string Faq5 { get; set; }
        public string Faq5ans { get; set; }
        public string Company { get; set; }
        public string Status { get; set; }
        public string Highlights { get; set; }
        public string Features { get; set; }
        public string CMSContent { get; set; }
        public string PDFPath { get; set; }
        public string VideoPath { get; set; }
        public string BrochurePath { get; set; }
        public string RoadmapPath { get; set; }
        public string GoogleMapLink { get; set; }
        public string LayoutPath { get; set; }
        public string ImagePath1 { get; set; }
        public string ImagePath2 { get; set; }
        public string ImagePath3 { get; set; }
        public string ImagePath4 { get; set; }
        public string ImagePath5 { get; set; }
        public string ContactName { get; set; }
        public string ContactDesignation { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Whatsup { get; set; }
        public string Website { get; set; }
        public string Services { get; set; }
        public string Approval { get; set; }
        public string Service1 { get; set; }
        public string Service2 { get; set; }
        public string Service3 { get; set; }
        public string Service4 { get; set; }
        public string Service5 { get; set; }
        public string CustomField1 { get; set; }
        public string CustomField2 { get; set; }
        public string CustomField3 { get; set; }
        public string CustomField4 { get; set; }
        public string CustomField5 { get; set; }
        public string CustomField6 { get; set; }
        public string CustomField7 { get; set; }
        public string CustomField8 { get; set; }
        public string CustomField9 { get; set; }
        public string CustomField10 { get; set; }

        public void Add(clsCMS obj)
        {
            objDAL.Add(obj);
        }
        public void Update(clsCMS obj)
        {
            objDAL.Update(obj);
        }

        public clsCMS Get(clsCMS obj)
        {
            return objDAL.Get(obj);
        }

        public List<clsCMS> GetAll(clsCMS obj)
        {
            return objDAL.GetAll(obj);
        }

        public void Remove(int Id)
        {
            objDAL.Remove(Id);
        }
    }
}
