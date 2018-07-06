using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_Login : System.Web.UI.Page
{
    ServiceClient LoginObject = new ServiceClient();
    string PageName;
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Request.QueryString["UserName"];
        if (userid != null && userid != "")
        {

            PanelLogin.Visible = false;
            PanelForgetPassword.Visible = true;
        }
        userid = Request.QueryString["SetUserName"];
        if (userid != null && userid != "")
        {

            PanelLogin.Visible = false;
            PanelSetUserName.Visible = true;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            IList<int> Login = LoginObject.AdminLogin(txtUserName.Text, txtPassword.Text);
            int cnt = Login[0];

            if (cnt > 0)
            {
                //ScriptManager.RegisterStartupScript(Page, GetType(), "Store_Data", "<script>Store_Data()</script>", false);
                Session["AdminID"] = Login[1];
                Response.Redirect("Dashboard.aspx");
            }
        }
        catch (Exception Ex)
        {
            errormailer.Visible = true;
            PanelLogin.Visible = true;
        }
    }

    protected void lnkForgetPassword_Click(object sender, EventArgs e)
    {
        PanelLogin.Visible = false;
        PanelForgetLink.Visible = true;
    }

    protected void btnSendLink_Click(object sender, EventArgs e)
    {
        PageName = HttpContext.Current.Request.Url.Authority + System.IO.Path.GetDirectoryName(Request.Url.AbsolutePath).Replace("\\", "/") + "/" + System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        if (LoginObject.SendLink(txtSendUserName.Text, PageName, "admin") > 0)
        {
            PanelForgetLink.Visible = true;
            PanelForgetEmail.Visible = false;
            PanelForgetMsg.Visible = true;
            errormailer.Visible = false;
        }
        else
        {
            errormailer.Visible = true;
        }
    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        string AdminID = LoginObject.ChangePwd(Request.QueryString["UserName"], txtFPassword.Text, "admin");
        if (AdminID != null)
        {
            if (txtFPassword.Text == txtCPassword.Text)
            {
                Session["AdminID"] = AdminID;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                errormailer.Visible = false;
            }
        }
        else
        {
            errormailer.Visible = false;
        }
    }

    protected void btnSetUserName_Click(object sender, EventArgs e)
    {
        if (txtSetPassword.Text == txtSetCPassword.Text)
        {
            string result = LoginObject.SetAdminUserName(Request.QueryString["SetUserName"], txtSetUserName.Text, txtSetPassword.Text);
            if(result == null)
            {
                errormailer.Visible = true;
            }
            else if(result == "Exiest")
            {
                errormailer.Visible = true;
            }
            else
            {
                Session["AdminID"] = result;
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}