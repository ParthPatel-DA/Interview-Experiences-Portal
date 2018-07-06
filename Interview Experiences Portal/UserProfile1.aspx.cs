using InterviewExperiencesServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    ServiceClient QAObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        IList<string> list = QAObject.GetStudentDetail(Convert.ToInt32(Session["UserID"]));
        lblDir.Text = list[3];
        lblUsrNm.Text = list[3];
        lblName.Text = list[1] + " " + list[2];
        lblDAID.Text = list[0];
        string str = list[5];
        if (str.Equals("1"))
        {
            lblGender.Text = "Male";
        }
        else if (str.Equals("2"))
        {
            lblGender.Text = "Female";
        }
        else
        {
            lblGender.Text = "Other";
        }
        LinkButton20.Text = list[4];
        lblPhone.Text = list[6];
        if(list[9] == null)
        {
            lkbtnGit.Text = "No Git Link";
        }
        else
        {
            lkbtnGit.Text = "Github";
            lkbtnGit.PostBackUrl = list[9];
        }

        if (list[8] == null)
        {
            lkbtnLinkedIn.Text = "No Linkedin Link";
        }
        else
        {
            lkbtnLinkedIn.Text = "Linkedin";
            lkbtnLinkedIn.PostBackUrl = list[8];
        }

        if (list[10]==null)
        {
            lkbtnStack.Text = "No StackOverflow";
        }
        else
        {
            lkbtnStack.Text = "StackOverflow";
            lkbtnStack.PostBackUrl = list[10];
        }

        if (list[7]==null)
        {
            lkbtnResume.Text = "No Resume";
        }
        else
        {
            lkbtnResume.Text = "Resume";
            lkbtnResume.PostBackUrl = list[7];
        }

        if (list[11] == null)
        {
            lkbtnHackerEarth.Text = "No Hacker Earth";
        }
        else
        {
            lkbtnHackerEarth.Text = "Hacker Earth";
            lkbtnHackerEarth.PostBackUrl = list[11];
        }

        if (list[12] == null)
        {
            lkbtnHackerRank.Text = "No Hacker Rank";
        }
        else
        {
            lkbtnHackerRank.Text = "Hacker Rank";
            lkbtnHackerRank.PostBackUrl = list[12];
        }

        if (list[13] == null)
        {
            lkbtnCodeChef.Text = "No Code Chef";
        }
        else
        {
            lkbtnCodeChef.Text = "Code Chef";
            lkbtnCodeChef.PostBackUrl = list[13];
        }

        if (list[14] == null)
        {
            lkbtnCodeForce.Text = "No Code Force";
        }
        else
        {
            lkbtnCodeForce.Text = "Code Force";
            lkbtnCodeForce.PostBackUrl = list[14];
        }
        int LOD = 0, NOR = 0;
        rptExpereince.DataSource = QAObject.GetStudentExpereinceByID(Convert.ToInt32(Session["UserID"]));
        rptExpereince.DataBind();
        foreach (RepeaterItem item in rptExpereince.Items)
        {
            Repeater rptRound = (Repeater)item.FindControl("rptRound");
            HiddenField hdnExpereinceID = (HiddenField)item.FindControl("hdnExpereinceID");
            Label lblLOD = (Label)item.FindControl("lblLOD");
            HiddenField hdnCompanyID = (HiddenField)item.FindControl("hdnCompanyID");
            LinkButton lblCompanyName = (LinkButton)item.FindControl("lblCompanyName");
            IList<string> Data = QAObject.GetCompanyName(Convert.ToInt32(hdnCompanyID.Value));
            lblCompanyName.Text = Data[0];
            Image imgCompany = (Image)item.FindControl("imgCompany");
            imgCompany.ImageUrl = "Assets/CompanyLogo/" + Data[1];
            HiddenField hdnDesignationID = (HiddenField)item.FindControl("hdnDesignationID");
            Label lblDesignation = (Label)item.FindControl("lblDesignation");
            lblDesignation.Text = QAObject.GetDesignationName(Convert.ToInt32(hdnDesignationID.Value));
            HiddenField hdnJobTypeID = (HiddenField)item.FindControl("hdnJobTypeID");
            Label lblJobType = (Label)item.FindControl("lblJobType");
            lblJobType.Text = QAObject.GetJobTypeName(Convert.ToInt32(hdnJobTypeID.Value));
            HiddenField hdnCOn = (HiddenField)item.FindControl("hdnCOn");
            Label lblTime = (Label)item.FindControl("lblTime");
            TimeSpan time = DateTime.Now - Convert.ToDateTime(hdnCOn.Value);
            int Year = DateTime.Now.Year - new DateTime(DateTime.Now.Subtract(time).Ticks).Year;
            int Month = new DateTime(DateTime.Now.Subtract(time).Ticks).Month - DateTime.Now.Month;
            lblTime.Text = Year + " Year " + Month + " Month " + (((Year * 365) + (Month * 30)) - time.Days) + " Days ago";
            HiddenField hdnUserID = (HiddenField)item.FindControl("hdnUserID");
            LinkButton lnkUserProfile = (LinkButton)item.FindControl("lnkUserProfile");
            lnkUserProfile.Text = QAObject.BindCByUser(Convert.ToInt32(hdnUserID.Value));
            lnkUserProfile.CommandArgument = QAObject.GetUserUserName(Convert.ToInt32(hdnUserID.Value));
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
            if (Convert.ToInt32(hdnSelected.Value) == 1)
            {
                lblSelected.Text = "Accepted Offer";
            }
            else if (Convert.ToInt32(hdnSelected.Value) == 2)
            {
                lblSelected.Text = "No Offer";
            }
            else
            {
                lblSelected.Text = "Declined Offer";
            }
            rptRound.DataSource = QAObject.GetExperienceRoundFeedList(Convert.ToInt32(hdnExpereinceID.Value));
            rptRound.DataBind();
            NOR += rptRound.Items.Count;
            foreach (RepeaterItem item1 in rptRound.Items)
            {
                HiddenField hdnRoundID = (HiddenField)item1.FindControl("hdnRoundID");
                Label lblRound = (Label)item1.FindControl("lblRound");
                lblRound.Text += QAObject.GetRoundName(Convert.ToInt32(hdnRoundID.Value));
                HiddenField hdnLevelOfDifficulty = (HiddenField)item1.FindControl("hdnLevelOfDifficulty");
                LOD += Convert.ToInt32(hdnLevelOfDifficulty.Value);
                Repeater rptQuestionAnswer = (Repeater)item1.FindControl("rptQuestionAnswer");
                HiddenField hdnExpereinceRoundID = (HiddenField)item1.FindControl("hdnExpereinceRoundID");
                rptQuestionAnswer.DataSource = QAObject.GetExperienceQuestionFeedList(Convert.ToInt32(hdnExpereinceRoundID.Value));
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

    }

    protected void rptExpereince_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}