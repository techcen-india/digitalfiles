using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using DataLayer;

namespace BusinessLayer
{
    public class clsLead
    {
        clsLeadData objDAL = new clsLeadData();

        public int SNo { get; set; }
        public int LeadId { get; set; }
        public DateTime LeadDate { get; set; }
        public string LeadType { get; set; }
        public int MasterId { get; set; }
        public string Lead { get; set; }
        public string company { get; set; }

        public string leadowner { get; set; }

        public string leadsource { get; set; }
        public string Leadloc { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Notes { get; set; }

        public string Followupdate { get; set; }

        public void Add(clsLead obj)
        {
            objDAL.Add(obj);
        }

        public clsLead Get(clsLead obj)
        {
            return objDAL.Get(obj);
        }

        public List<clsLead> GetAll(clsLead obj)
        {
            return objDAL.GetAll(obj);
        }

        public void Remove(int Id)
        {
            objDAL.Remove(Id);
        }
    }
}
