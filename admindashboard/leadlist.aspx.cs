using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LeadList : System.Web.UI.Page
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
        BusinessLayer.clsLead obj = new BusinessLayer.clsLead();
        gv.DataSource = obj.GetAll(obj);
        gv.DataBind();
    }

    protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            Response.Redirect("Lead?ItemId=" + e.CommandArgument);
        }
        else if (e.CommandName == "cmdDelete")
        {
            BusinessLayer.clsLead Item = new BusinessLayer.clsLead();
            Item.Remove(Convert.ToInt16(e.CommandArgument));
            BindData();
        }
    }

}