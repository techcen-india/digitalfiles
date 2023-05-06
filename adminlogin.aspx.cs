using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    protected void BindData()
    {
        BusinessLayer.clsCMS obj = new BusinessLayer.clsCMS();
        obj.CMSType = "CMS";
        obj.CMSKey = "login";
        obj = obj.Get(obj);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        BusinessLayer.clsUser obj = new BusinessLayer.clsUser();
        obj.Username = Convert.ToString(txtUserName.Text);
        obj.Pwd = Convert.ToString(txtPassword.Text);
        obj = obj.CheckValidate(obj);

        if (obj == null)
        {
            lblMessage.CssClass = "text-danger";
            lblMessage.Text = "Invalild Username or password";
        }
        else
        {
            CurrentUser.CurrentUserId = Convert.ToInt16(obj.UserId);
            CurrentUser.CurrentUsername = obj.Username;
            CurrentUser.CurrentName = obj.Fullname;

            // Response.Redirect("admin/default");
             Response.Redirect("admindashboard/Default");
           // Response.Redirect("clientdashboard/certificates");

        }
    }

}