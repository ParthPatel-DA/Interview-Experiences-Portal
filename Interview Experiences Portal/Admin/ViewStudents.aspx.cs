using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_ViewStudens : System.Web.UI.Page
{
    ServiceClient StudentObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Code = StudentObject.GetProgramFirst();
            BindData(Code, StudentObject.GetYearFirst(Code));
        }
    }

    private void BindData(String Code, String Year)
    {
        Repeater1.DataSource = StudentObject.GetProgramList();
        Repeater1.DataBind();
        List<String> Data = StudentObject.YearListByCode(Code).ToList();
        Session["ProgramCode"] = Code;
        List<YearList> list = new List<YearList>();
        foreach (String d in Data)
        {
            list.Add(new YearList());
            list[list.Count - 1].Year = d;
        }
        rptYearList.DataSource = list;
        rptYearList.DataBind();
        rptStudent.DataSource = StudentObject.GetStudentListByProgramYear(Code, Year);
        rptStudent.DataBind();
    }

    protected void rptProgram_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName== "GetYearList")
        {
            List<String> Data = StudentObject.YearListByCode(e.CommandArgument.ToString()).ToList();
            List<YearList> list = new List<YearList>();
            foreach (String d in Data)
            {
                list.Add(new YearList());
                list[list.Count - 1].Year = d;
            }
            rptYearList.DataSource = list;
            rptYearList.DataBind();
        }
    }

    protected void rptYearList_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "GetStudentData")
        {
            rptStudent.DataSource = StudentObject.GetStudentListByProgramYear(Session["ProgramCode"].ToString(), e.CommandArgument.ToString());
            rptStudent.DataBind();
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        List<String> Data = StudentObject.YearListByCode(lnk.CommandArgument).ToList();
        Session["ProgramCode"] = lnk.CommandArgument;
        List<YearList> list = new List<YearList>();
        foreach (String d in Data)
        {
            list.Add(new YearList());
            list[list.Count - 1].Year = d;
        }
        rptYearList.DataSource = list;
        rptYearList.DataBind();
        
    }

    protected void rptStudent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "ViewStudentDetail")
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#modal-default').modal({backdrop:'static', keyboard: false});", true);
            ID.Value = e.CommandArgument.ToString();
            IList<string> list = StudentObject.GetStudentDetail(Convert.ToInt32(e.CommandArgument));
            ltrDAID.Text = list[0];
            ltrStudentName.Text = list[1] +  " " + list[2];
            lblUserName.Text = list[3];
            lblEmail.Text = list[4];
            if(list[5] == "1")
            {
                lblGender.Text = "Male";
            }
            else if(list[5] == "2")
            {
                lblGender.Text = "Female";
            }
            else
            {
                lblGender.Text = "Other";
            }
            lblContactNo.Text = list[6];
            if(list[7] == null)
            {
                lblResume.Text = "---";
            }
            else
            {
                lblResume.Text = list[7];
            }
            if (list[8] == null)
            {
                lblLinkedIn.Text = "---";
            }
            else
            {
                lblLinkedIn.Text = list[7];
            }
            if (list[9] == null)
            {
                lblGitHub.Text = "---";
            }
            else
            {
                lblGitHub.Text = list[7];
            }
            if (list[10] == null)
            {
                lblStackOverflow.Text = "---";
            }
            else
            {
                lblStackOverflow.Text = list[7];
            }
            rptExpereince.DataSource = StudentObject.GetStudentExpereinceByID(Convert.ToInt32(e.CommandArgument));
            rptExpereince.DataBind();
            int LOD = 0, NOR = 0;
            foreach (RepeaterItem item in rptExpereince.Items)
            {
                Repeater rptRound = (Repeater)item.FindControl("rptRound");
                HiddenField hdnExpereinceID = (HiddenField)item.FindControl("hdnExpereinceID");
                Label lblLOD = (Label)item.FindControl("lblLOD");
                HiddenField hdnCompanyID = (HiddenField)item.FindControl("hdnCompanyID");
                LinkButton lblCompanyName = (LinkButton)item.FindControl("lblCompanyName");
                IList<string> Data = StudentObject.GetCompanyName(Convert.ToInt32(hdnCompanyID.Value));
                lblCompanyName.Text = Data[0];
                Image imgCompany = (Image)item.FindControl("imgCompany");
                imgCompany.ImageUrl = "~/Assets/CompanyLogo/" + Data[1];
                HiddenField hdnDesignationID = (HiddenField)item.FindControl("hdnDesignationID");
                Label lblDesignation = (Label)item.FindControl("lblDesignation");
                lblDesignation.Text = StudentObject.GetDesignationName(Convert.ToInt32(hdnDesignationID.Value));
                HiddenField hdnJobTypeID = (HiddenField)item.FindControl("hdnJobTypeID");
                Label lblJobType = (Label)item.FindControl("lblJobType");
                lblJobType.Text = StudentObject.GetJobTypeName(Convert.ToInt32(hdnJobTypeID.Value));
                HiddenField hdnCOn = (HiddenField)item.FindControl("hdnCOn");
                Label lblTime = (Label)item.FindControl("lblTime");
                TimeSpan time = DateTime.Now - Convert.ToDateTime(hdnCOn.Value);
                int Year = DateTime.Now.Year - new DateTime(DateTime.Now.Subtract(time).Ticks).Year;
                int Month = new DateTime(DateTime.Now.Subtract(time).Ticks).Month - DateTime.Now.Month;
                lblTime.Text = Year + " Year " + Month + " Month " + (((Year * 365) + (Month * 30)) - time.Days) + " Days ago";
                HiddenField hdnUserID = (HiddenField)item.FindControl("hdnUserID");
                LinkButton lnkUserProfile = (LinkButton)item.FindControl("lnkUserProfile");
                lnkUserProfile.Text = StudentObject.BindCByUser(Convert.ToInt32(hdnUserID.Value));
                lnkUserProfile.CommandArgument = StudentObject.GetUserUserName(Convert.ToInt32(hdnUserID.Value));
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
                    lblSelected.Text = "---";
                }
                rptRound.DataSource = StudentObject.GetExperienceRoundFeedList(Convert.ToInt32(hdnExpereinceID.Value));
                rptRound.DataBind();
                NOR += rptRound.Items.Count;
                foreach (RepeaterItem item1 in rptRound.Items)
                {
                    HiddenField hdnRoundID = (HiddenField)item1.FindControl("hdnRoundID");
                    Label lblRound = (Label)item1.FindControl("lblRound");
                    lblRound.Text += StudentObject.GetRoundName(Convert.ToInt32(hdnRoundID.Value));
                    HiddenField hdnLevelOfDifficulty = (HiddenField)item1.FindControl("hdnLevelOfDifficulty");
                    LOD += Convert.ToInt32(hdnLevelOfDifficulty.Value);
                    Repeater rptQuestionAnswer = (Repeater)item1.FindControl("rptQuestionAnswer");
                    HiddenField hdnExpereinceRoundID = (HiddenField)item1.FindControl("hdnExpereinceRoundID");
                    rptQuestionAnswer.DataSource = StudentObject.GetExperienceQuestionFeedList(Convert.ToInt32(hdnExpereinceRoundID.Value));
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
    }
}

class YearList
{
    string year;
    public string Year
    {
        get
        {
            return year;
        }
        set
        {
            year = value;
        }
    }
}