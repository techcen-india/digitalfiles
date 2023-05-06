using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class admindashboard_addusers : System.Web.UI.Page
{
    BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
    BusinessLayer.clsCMS Item;
    int ItemId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        ItemId = Convert.ToInt16(Request.QueryString["ItemId"]);
        Item = new BusinessLayer.clsCMS();
        //if (!IsPostBack)
        //{
        //    if (ItemId > 0)
        //    {
        //        Item.CMSId = ItemId;
        //        Item.CMSType = "digitalmarketing";
        //        Item = Item.Get(Item);
 
        //    }
        //}

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Regex MyRegex = new Regex("[^A-Za-z0-9-]", RegexOptions.IgnoreCase);
        //string cmsName = MyRegex.Replace(txtCMSName.Text.Trim().Replace(" ", "-"), @"").Replace("--", "-").Replace("_", "-");
        //string sGuid = DateTime.Now.ToString("ddMMyyyymmssms");



        BusinessLayer.clsUser Item = new BusinessLayer.clsUser();
       // Item.LeadType = "User Dashboard";
   

       
        Item.Fullname = txtClientname.Text;
        Item.Username = txtusername.Text;
        Item.Pwd = txtpassword.Text;
        Item.Userlogintype = txtUserlogintype.Text;
        Item.Activestatus = txtactivestatus.Text;
        

        Item.Add(Item);

        Response.Redirect("viewusers");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewusers");
    }


}