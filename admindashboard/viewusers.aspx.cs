using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admindashboard_viewusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    protected void BindData()
    {
        BusinessLayer.clsUser obj = new BusinessLayer.clsUser();
        gv.DataSource = obj.GetAll(obj);
        gv.DataBind();
    }
    protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            Response.Redirect("addusers?ItemId=" + e.CommandArgument);
        }
        else if (e.CommandName == "cmdDelete")
        {
            BusinessLayer.clsLead Item = new BusinessLayer.clsLead();
            Item.Remove(Convert.ToInt16(e.CommandArgument));
            BindData();
        }
    }

}