using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class cms : System.Web.UI.Page
{
    BusinessLayer.CurrentUser CurrentUser = new BusinessLayer.CurrentUser();
    BusinessLayer.clsCMS Item;
    int ItemId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        ItemId = Convert.ToInt16(Request.QueryString["ItemId"]);
        Item = new BusinessLayer.clsCMS();
        if (!IsPostBack)
        {
            if (ItemId > 0)
            {
                Item.CMSId = ItemId;
                Item.CMSType = "CMS";
                Item = Item.Get(Item);

                if (Item != null)
                {
                    hdnItemId.Value = Item.CMSId.ToString();
                    lblTitle.Text = "Edit " + Item.CMSName + " Page";
                    txtCMSKey.Text = Item.CMSKey.Trim();
                    txtMetaTitle.Text = Item.MetaTitle;
                    txtMetaDescription.Text = Item.MetaDescription;
                    txtMetaKeywords.Text = Item.MetaKeywords;
                    txtCMSName.Text = Item.CMSName;
                    txtCMSContent.Text = Item.CMSContent;
                }
            }
            else
            {
                lblTitle.Text = "Add New Page";
            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("cmslist");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Item.CMSId = Convert.ToInt16(hdnItemId.Value);
        Item.CMSKey = txtCMSKey.Text;
        Item.CMSType = "CMS";
        Item.MasterId = 0;
        Item.PageURL = txtCMSName.Text.Replace(" ", "").Replace("--", "-");
        Item.MetaTitle = txtMetaTitle.Text;
        Item.MetaDescription = txtMetaDescription.Text;
        Item.MetaKeywords = txtMetaKeywords.Text;
        Item.CMSName = txtCMSName.Text;
        Item.CMSContent = txtCMSContent.Text;
        if (Item.CMSId > 0)
        {
            Item.Update(Item);
        }
        else
        {
            Item.Add(Item);
        }
        Response.Redirect("cmslist");
    }


}