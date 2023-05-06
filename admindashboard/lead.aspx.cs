using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Flat : System.Web.UI.Page
{
    BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
    BusinessLayer.clsCMS Item;
    int ItemId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    protected void BindData()
    {


        //ItemId = Convert.ToInt16(Request.QueryString["ItemId"]);
        //Item = new BusinessLayer.clsCMS();
        //if (!IsPostBack)
        //{
        //    if (ItemId > 0)
        //    {
        //        Item.CMSId = ItemId;
        //        Item.CMSType = "certificate";
        //        Item = Item.Get(Item);

        //        if (Item != null)
        //        {
        //            lblTitle.Text = "Edit " + Item.CMSName;
        //            hdnItemId.Value = Item.CMSId.ToString();


        //          txtLeadloc.Text = Item.Leadloc;
        //           txtCompany.Text = Item.company;
        //           txtLeadowner.Text = Item.leadowner;
        //           txtLeadsource.Text = Item.leadsource;
        //           txtFullName.Text = Item.FullName;
        //           txtEmail.Text = Item.Email;
        //           txtMobile.Text = Item.Mobile;
        //          txtLeadstatus.Text = Item.Lead;
        //          txtfollowdate.Text = Item.Followupdate;
        //            txtNotes.Text = Item.Notes;



 




                 

        //        }
        //    }
         
        //}



        BusinessLayer.clsCMS obj = new BusinessLayer.clsCMS();
        obj.CMSType = "CMS";
        obj.CMSKey = "certificate";
        obj = obj.Get(obj);

            }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        BusinessLayer.clsLead Item = new BusinessLayer.clsLead();
        Item.LeadType = "Certifcate Dashboard";
        Item.MasterId = 0;
        
        Item.Leadloc = txtLeadloc.Text;
        Item.company = txtCompany.Text;
        Item.leadowner = txtLeadowner.Text;
        Item.leadsource = txtLeadsource.Text;
        Item.FullName = txtFullName.Text;
        Item.Email = txtEmail.Text;
        Item.Mobile = txtMobile.Text;
        
       Item.Lead = txtLeadstatus.Text;
        Item.Followupdate = txtfollowdate.Text;
        
        Item.Notes = txtNotes.Text;
        Item.Add(Item);

        Response.Redirect("leadlist");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Leadlist");
    }


}