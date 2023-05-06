using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        BusinessLayer.clsCMS obj = new BusinessLayer.clsCMS();
        obj.CMSType = "CMS";
        obj.CMSKey = "students-register";
        obj = obj.Get(obj);

        if (obj != null)
        {
            #region "MetaTags"

            Page.Title = obj.MetaTitle;

            HtmlLink htmlCanonical = new HtmlLink();
            htmlCanonical.Attributes.Add("rel", "canonical");
            htmlCanonical.Href = "http://" + Request.Url.Authority + Request.RawUrl;
            Page.Header.Controls.Add(htmlCanonical);

            HtmlMeta meataDesc = new HtmlMeta();
            meataDesc.Name = "description";
            meataDesc.Content = obj.MetaDescription;
            Page.Header.Controls.Add(meataDesc);

            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = obj.MetaKeywords;
            Page.Header.Controls.Add(metaKeywords);

            #endregion

            #region "Open Graph Tags"

            HtmlMeta ogType = new HtmlMeta();
            ogType.Attributes.Add("property", "og:type");
            ogType.Content = "website";
            Page.Header.Controls.Add(ogType);

            HtmlMeta ogTitle = new HtmlMeta();
            ogTitle.Attributes.Add("property", "og:title");
            ogTitle.Content = obj.MetaTitle;
            Page.Header.Controls.Add(ogTitle);

            HtmlMeta tagimg = new HtmlMeta();
            tagimg.Attributes.Add("property", "og:image");
            tagimg.Content = "http://" + Request.Url.Authority + Request.RawUrl;
            Page.Header.Controls.Add(tagimg);

            HtmlMeta ogSiteType = new HtmlMeta();
            ogSiteType.Attributes.Add("property", "og:site_name");
            ogSiteType.Content = "Realty Field";
            Page.Header.Controls.Add(ogSiteType);

            HtmlMeta ogDesc = new HtmlMeta();
            ogDesc.Attributes.Add("property", "og:description");
            ogDesc.Content = obj.MetaDescription;
            Page.Header.Controls.Add(ogDesc);

            HtmlMeta ogURL = new HtmlMeta();
            ogURL.Attributes.Add("property", "og:url");
            ogURL.Content = "http://" + Request.Url.Authority + Request.RawUrl;
            Page.Header.Controls.Add(ogURL);

            #endregion

        }
    
            }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        BusinessLayer.clsLead Item = new BusinessLayer.clsLead();
        Item.LeadType = "Trainers Registration";
        Item.MasterId = 0;
        Item.Lead = txtProject.Text;
        Item.FullName = txtFullName.Text;
        Item.Email = txtEmail.Text;
        Item.Mobile = txtMobile.Text;
        Item.Notes = txtNotes.Text;
        Item.Add(Item);

        Response.Redirect("../../thankyou");
    }
}