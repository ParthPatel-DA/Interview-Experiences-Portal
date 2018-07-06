using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_AddCompany : System.Web.UI.Page
{
    ServiceClient CompanyObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void btnAddCompany_Click(object sender, EventArgs e)
    {
        var filename = "";
        if (fileProfileImage.HasFile)
        {
            string strPic = fileProfileImage.FileName;
            var path = Server.MapPath("CompanyImage");
            DateTime date = DateTime.Now;
            string strdate = date.ToString();

            var charsToRemove = new string[] { "%", "-", ":", " ", "\\", "/" };
            foreach (var c in charsToRemove)
            {
                strdate = strdate.Replace(c, string.Empty);
                strPic = strPic.Replace(c, string.Empty);
            }
            //filename = strdate + strPic;
            filename = strPic;
            if (CompanyObject.AddCompany(txtCompanyName.Text, txtCompanyWebsite.Text, filename, txtCompanyDescription.Text, Convert.ToInt32(Session["AdminID"])))
            {
                fileProfileImage.SaveAs(path + "\\" + filename);
                Response.Redirect("ViewCompany.aspx");
            }
            else
            {
                errormailer.Visible = true;
            }
        }
        else
        {
            errormailer.Visible = true;
        }
    }
}