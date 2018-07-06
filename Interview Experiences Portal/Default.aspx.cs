using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class _Default : System.Web.UI.Page
{
    ServiceClient ExperienceObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Request.QueryString["UserName"];
        if (userid != null && userid != "")
        {
            Session["Reg"] = "set";
            Response.Redirect("Default.aspx");
        }
        if (Session["UserID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
        if (Session["Reg"] != null)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#large').modal({backdrop:'static', keyboard: false});", true);
        }
    }

    private void BindData()
    {
        int LOD = 0, NOR = 0;
        rptExpereince.DataSource = ExperienceObject.GetExperienceFeedList(Convert.ToInt32(Session["UserID"]));
        rptExpereince.DataBind();
        foreach (RepeaterItem item in rptExpereince.Items)
        {
            Repeater rptRound = (Repeater)item.FindControl("rptRound");
            HiddenField hdnExpereinceID = (HiddenField)item.FindControl("hdnExpereinceID");
            Label lblLOD = (Label)item.FindControl("lblLOD");
            HiddenField hdnCompanyID = (HiddenField)item.FindControl("hdnCompanyID");
            LinkButton lblCompanyName = (LinkButton)item.FindControl("lblCompanyName");
            IList<string> Data = ExperienceObject.GetCompanyName(Convert.ToInt32(hdnCompanyID.Value));
            lblCompanyName.Text = Data[0];
            Image imgCompany = (Image)item.FindControl("imgCompany");
            imgCompany.ImageUrl = "Assets/CompanyLogo/" + Data[1];
            HiddenField hdnDesignationID = (HiddenField)item.FindControl("hdnDesignationID");
            Label lblDesignation = (Label)item.FindControl("lblDesignation");
            lblDesignation.Text = ExperienceObject.GetDesignationName(Convert.ToInt32(hdnDesignationID.Value));
            HiddenField hdnJobTypeID = (HiddenField)item.FindControl("hdnJobTypeID");
            Label lblJobType = (Label)item.FindControl("lblJobType");
            lblJobType.Text = ExperienceObject.GetJobTypeName(Convert.ToInt32(hdnJobTypeID.Value));
            HiddenField hdnCOn = (HiddenField)item.FindControl("hdnCOn");
            Label lblTime = (Label)item.FindControl("lblTime");
            TimeSpan time = DateTime.Now - Convert.ToDateTime(hdnCOn.Value);
            int Year = DateTime.Now.Year - new DateTime(DateTime.Now.Subtract(time).Ticks).Year;
            int Month = new DateTime(DateTime.Now.Subtract(time).Ticks).Month - DateTime.Now.Month;
            lblTime.Text = Year + " Year " + Month + " Month " + (((Year * 365) + (Month * 30)) - time.Days) + " Days ago";
            HiddenField hdnUserID = (HiddenField)item.FindControl("hdnUserID");
            LinkButton lnkUserProfile = (LinkButton)item.FindControl("lnkUserProfile");
            lnkUserProfile.Text = ExperienceObject.BindCByUser(Convert.ToInt32(hdnUserID.Value));
            lnkUserProfile.CommandArgument = ExperienceObject.GetUserUserName(Convert.ToInt32(hdnUserID.Value));
            HiddenField hdnOverallExperienceRate = (HiddenField)item.FindControl("hdnOverallExperienceRate");
            Label lblOAE = (Label)item.FindControl("lblOAE");
            if (Convert.ToInt32(hdnOverallExperienceRate.Value) <= 2)
            {
                lblOAE.Text = "Negative Experience";
            }
            else if (Convert.ToInt32(hdnOverallExperienceRate.Value) <= 4)
            {
                lblOAE.Text = "Neutral Experience";
            }
            else
            {
                lblOAE.Text = "Positive Experience";
            }
            HiddenField hdnSelected = (HiddenField)item.FindControl("hdnSelected");
            Label lblSelected = (Label)item.FindControl("lblSelected");
            if (Convert.ToBoolean(hdnSelected.Value) == true)
            {
                lblSelected.Text = "Accepted Offer";
            }
            else if (Convert.ToBoolean(hdnSelected.Value) == false)
            {
                lblSelected.Text = "No Offer";
            }
            else
            {
                lblSelected.Text = "Declined Offer";
            }
            rptRound.DataSource = ExperienceObject.GetExperienceRoundFeedList(Convert.ToInt32(hdnExpereinceID.Value));
            rptRound.DataBind();
            NOR += rptRound.Items.Count;
            foreach (RepeaterItem item1 in rptRound.Items)
            {
                HiddenField hdnRoundID = (HiddenField)item1.FindControl("hdnRoundID");
                Label lblRound = (Label)item1.FindControl("lblRound");
                lblRound.Text += ExperienceObject.GetRoundName(Convert.ToInt32(hdnRoundID.Value));
                HiddenField hdnLevelOfDifficulty = (HiddenField)item1.FindControl("hdnLevelOfDifficulty");
                LOD += Convert.ToInt32(hdnLevelOfDifficulty.Value);
                Repeater rptQuestionAnswer = (Repeater)item1.FindControl("rptQuestionAnswer");
                HiddenField hdnExpereinceRoundID = (HiddenField)item1.FindControl("hdnExpereinceRoundID");
                rptQuestionAnswer.DataSource = ExperienceObject.GetExperienceQuestionFeedList(Convert.ToInt32(hdnExpereinceRoundID.Value));
                rptQuestionAnswer.DataBind();
                foreach (RepeaterItem item2 in rptQuestionAnswer.Items)
                {
                    Label lblAnswer = (Label)item2.FindControl("lblAnswer");
                    if (lblAnswer.Text == "")
                    {
                        lblAnswer.Text = "No Answer";
                    }
                }
            }

            if (Convert.ToInt32(LOD / NOR) <= 2)
            {
                lblLOD.Text = "Diffcult Interview";
            }
            else if (Convert.ToInt32(LOD / NOR) <= 3)
            {
                lblLOD.Text = "Average Interview";
            }
            else
            {
                lblLOD.Text = "Easy Interview";
            }
        }
        rptcheckCompany.DataSource = ExperienceObject.getCompanyList();
        rptcheckCompany.DataBind();
    }

    protected void rptExpereince_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "ViewUserProfile")
        {
            Session["DAID"] = e.CommandArgument;
            Response.Redirect("UserProfile.aspx");
        }
        else if(e.CommandName == "ViewCompanyProfile")
        {
            Session["CompanyID"] = e.CommandArgument;
            Response.Redirect("CompanyProfile.aspx");
        }
    }

    protected void btnAddICompany_Click(object sender, EventArgs e)
    {
        String list = "";
        foreach (RepeaterItem item in rptcheckCompany.Items)
        {
            HiddenField hdn = (HiddenField)item.FindControl("HiddenField1");
            CheckBox chk = (CheckBox)item.FindControl("chkbxCompanyName");
            if (chk.Checked)
            {
                list += hdn.Value + ",";
            }
        }
        ExperienceObject.AddInterestedCompany(list, Convert.ToInt32(Session["UserID"]));
        Session["Reg"] = null;
        Response.Redirect("Default.aspx");
    }
}