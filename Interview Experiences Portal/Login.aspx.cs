using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Login : System.Web.UI.Page
{
    ServiceClient LoginObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Request.QueryString["UserName"];
        if (userid != null && userid != "")
        {
            PanelLogin.Visible = false;
            PanelForgetPassword.Visible = true;
        }
    }
    string PageName;
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            IList<int> Login = LoginObject.UserLogin(txtLoginUserName.Text, txtLoginPassword.Text);
            int cnt = Login[0];

            if (cnt > 0)
            {
                //ScriptManager.RegisterStartupScript(Page, GetType(), "Store_Data", "<script>Store_Data()</script>", false);
                Session["UserID"] = Login[1];
                Response.Redirect("Default.aspx");
            }
        }
        catch (Exception Ex)
        {
            //error.Visible = true;
            //PanelLogin.Visible = true;
            error.Text = "Something Wrong";
        }
    }

    protected void btnForgetSendLink_Click(object sender, EventArgs e)
    {
        PageName = HttpContext.Current.Request.Url.Authority + System.IO.Path.GetDirectoryName(Request.Url.AbsolutePath).Replace("\\", "/") + "/" + System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        if (LoginObject.SendLink(txtForgetEmail.Text, PageName, "user") > 0)
        {

        }
        else
        {
            error.Text = "sorry";
        }
    }

    protected void forgetpassword_Click(object sender, EventArgs e)
    {
        PanelLogin.Visible = false;
        PanelForgetPassword.Visible = false;
        PanelRegistration.Visible = false;
        PanelSendLink.Visible = true;
    }

    protected void lnkRegistration_Click(object sender, EventArgs e)
    {
        PanelLogin.Visible = false;
        PanelRegistration.Visible = true;
        PanelForgetPassword.Visible = false;
        PanelSendLink.Visible = false;
    }

    protected void btnSendLinkBack_Click(object sender, EventArgs e)
    {
        PanelLogin.Visible = true;
        PanelRegistration.Visible = false;
        PanelForgetPassword.Visible = false;
        PanelSendLink.Visible = false;
    }

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        string AdminID = LoginObject.ChangePwd(Request.QueryString["UserName"], txtFPassword.Text, "user");
        if (AdminID != null)
        {
            if (txtFPassword.Text == txtCPassword.Text)
            {
                Session["UserID"] = AdminID;
                Response.Redirect("Default.aspx");

            }
            else
            {
                error.Text = "Password not Match";
            }
        }
        else
        {
            error.Text = "Link invalied please try again.";
        }
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (txtDAID.Text == "")
        {
            errorDAID.Text = "Please Enter DA-IICT Student ID";
            errorDAID.Visible = true;
        }
        else if (txtDAID.Text.Length != 9)
        {
            errorDAID.Text = "Invalied DA-IICT Student ID";
            errorDAID.Visible = true;
        }
        else
        {
            string error = LoginObject.CheckDAID(txtDAID.Text);
            if (error != "Available")
            {
                errorDAID.Text = error;
                errorDAID.Visible = true;
            }
            else
            {
                if(LoginObject.UserRegistration(txtDAID.Text, Convert.ToInt32(ddGender.SelectedValue), txtUserName.Text, txtSignUpPassword.Text)== "Available")
                {
                    Response.Redirect("DA-InExEmail.html");
                }
                else
                {
                    
                }
            }
        }
    }

    //protected void txtDAID_TextChanged(object sender, EventArgs e)
    //{
    //    //if(txtDAID.Text.Length != 9)
    //    //{
    //    //    errorDAID.Text = "Invalied DA-IICT Student ID";
    //    //    errorDAID.Visible = true;
    //    //}
    //}

    protected void txtDAID_TextChanged(object sender, EventArgs e)
    {
        if (txtDAID.Text == "")
        {
            errorDAID.Text = "Please Enter DA-IICT Student ID";
            errorDAID.Visible = true;
        }
        else if (txtDAID.Text.Length != 9)
        {
            errorDAID.Text = "Invalied DA-IICT Student ID";
            errorDAID.Visible = true;
        }
        else
        {
            string error= LoginObject.CheckDAID(txtDAID.Text);
            if(error != "Available")
            {
                errorDAID.Text = error;
                errorDAID.Visible = true;
            }
            else
            {
                errorDAID.Visible = false;
            }
        }
    }
}