using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClientMasterPage : System.Web.UI.MasterPage
{

    BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (CurrentUser.CurrentUserId > 0)
        {
        }
        else
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("../login.aspx");
        }



    }
}
