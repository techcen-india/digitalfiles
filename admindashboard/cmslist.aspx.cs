using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cmslist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    protected void BindData()
    {
        BusinessLayer.clsCMS obj = new BusinessLayer.clsCMS();
        obj.CMSType = "CMS";
        gv.DataSource = obj.GetAll(obj);
        gv.DataBind();
    }
    protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdEdit")
        {
            Response.Redirect("CMS?ItemId=" + e.CommandArgument);
        }
        else if (e.CommandName == "cmdDelete")
        {
            BusinessLayer.clsCMS Item = new BusinessLayer.clsCMS();
            int ItemId = Convert.ToInt16(e.CommandArgument);
            Item.Remove(ItemId);
            BindData();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("CMS");
    }
}