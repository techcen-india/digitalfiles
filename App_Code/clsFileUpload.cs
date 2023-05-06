using System;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text.RegularExpressions;

namespace BusinessLayer
{
    public class clsFileUpload
    {
        HtmlInputFile _objFileField;
        public HtmlInputFile FileField
        {
            get { return _objFileField; }
            set { _objFileField = value; }
        }

        public string Upload_Image(System.Web.UI.WebControls.FileUpload fl)
        {
            string sGuid;
            string strFileName;
            string strFileName1;
            string strFileName2;
            string FileExt;
            string strFilePath;
            string ServerPath = HttpContext.Current.Server.MapPath("~/UserImages/");
            strFilePath = fl.PostedFile.FileName;
            FileExt = System.IO.Path.GetExtension(strFilePath);
            sGuid = Convert.ToString(Guid.NewGuid());
            sGuid = sGuid.Replace("-", "");
            strFileName = sGuid + FileExt;
            strFileName1 = ServerPath + sGuid + FileExt;
            fl.PostedFile.SaveAs(strFileName1);

            strFileName2 = ServerPath + "thumb_" + sGuid + FileExt;
            System.Drawing.Image g = System.Drawing.Image.FromFile(strFileName1);
            System.Drawing.Bitmap SmalImg = new System.Drawing.Bitmap(g, 160, 120);
            SmalImg.Save(strFileName2, g.RawFormat);
            return strFileName;
        }

        public void UploadFile(System.Web.UI.WebControls.FileUpload fl, string fileName)
        {
            string ServerPath = HttpContext.Current.Server.MapPath("~/UserImages/");
            string fileExt = System.IO.Path.GetExtension(fl.PostedFile.FileName);
            string filePath = ServerPath + fileName;
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            fl.PostedFile.SaveAs(filePath);
        }

        public void UploadPDF(System.Web.UI.WebControls.FileUpload fl)
        {
            string ServerPath = HttpContext.Current.Server.MapPath("~/UserImages/");
            string fileName =  fl.PostedFile.FileName;
            string filePath = ServerPath + fileName;
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            fl.PostedFile.SaveAs(filePath);
        }

        public string UploadImage(System.Web.UI.WebControls.FileUpload fl)
        {
            string sGuid;
            string strFileName;
            string strFileName1;
            string FileExt;
            string strFilePath;
            string ServerPath = HttpContext.Current.Server.MapPath("~/UserImages/");
            strFilePath = fl.PostedFile.FileName;
            FileExt = System.IO.Path.GetExtension(strFilePath);
            sGuid = DateTime.Now.ToString("ddMMyyyymmssms");

            strFileName = sGuid + FileExt;
            strFileName1 = ServerPath + sGuid + FileExt;
            fl.PostedFile.SaveAs(strFileName1);
            return strFileName;
        }

        public string UploadMultipleImage(HttpPostedFile fl, string fName)
        {
            string fileExt = System.IO.Path.GetExtension(fl.FileName);

            Random rand = new Random((int)DateTime.Now.Ticks);
            int randomNum = 0;
            randomNum = rand.Next(999999999);
            string acctnum = randomNum.ToString();
            if (acctnum.Length < 9)
            {
                acctnum = acctnum.PadLeft(9, '0');
            }

            Regex MyRegex = new Regex("[^a-z_0-9]", RegexOptions.IgnoreCase);
            string fileName = MyRegex.Replace(fName, @"").ToLower();

            string ServerPath = HttpContext.Current.Server.MapPath("~/UserImages/");
            string filePath = ServerPath + fileName + "_" + acctnum + fileExt;
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            fl.SaveAs(filePath);

            return (fileName + "_" + acctnum + fileExt);
        }
    }
}
