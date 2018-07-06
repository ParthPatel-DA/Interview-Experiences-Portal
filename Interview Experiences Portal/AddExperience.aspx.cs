using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class AddExperience : System.Web.UI.Page
{
    ServiceClient ExperienceObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        ddCompanyName.DataSource = ExperienceObject.getCompanyList();
        ddCompanyName.DataTextField = "Name";
        ddCompanyName.DataValueField = "CompanyID";
        ddCompanyName.DataBind();
        ddCompanyName.Items.Insert(0, "Select Company");
        ddCompanyName.Items.Add("Other");
        ddDesignation.DataSource = ExperienceObject.getDesignationList();
        ddDesignation.DataTextField = "Name";
        ddDesignation.DataValueField = "DesignationID";
        ddDesignation.DataBind();
        ddDesignation.Items.Insert(0, "Select Designation");
        ddDesignation.Items.Add("Other");
        ddJobType.DataSource = ExperienceObject.GetJobType();
        ddJobType.DataTextField = "JobType";
        ddJobType.DataValueField = "JobTypeID";
        ddJobType.DataBind();
        ddJobType.Items.Insert(0, "Select Job Type");
        ddJobType.Items.Add("Other");
    }

    protected void lnkNext1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        ltrStep.Text = "2";
    }

    protected void ddNoOfRound_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<int> NoOfRound = new List<int>();
        for (int i = 0; i < Convert.ToInt32(ddNoOfRound.Text); i++)
        {
            NoOfRound.Add(i);
        }
        rptRound.DataSource = NoOfRound;
        rptRound.DataBind();
        foreach(RepeaterItem item in rptRound.Items)
        {
            DropDownList ddRoundType = (DropDownList)item.FindControl("ddRoundType");
            ddRoundType.DataSource = ExperienceObject.GetRoundList();
            ddRoundType.DataTextField = "RoundName";
            ddRoundType.DataValueField = "RoundID";
            ddRoundType.DataBind();
            ddRoundType.Items.Insert(0, "Select Round Name");
            ddRoundType.Items.Add("Other");
        }
    }

    protected void ddNoOfQuestionDescribe_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList dd = (DropDownList)sender;
        List<int> NoOfQuestionDescribe = new List<int>();
        for (int i = 0; i < Convert.ToInt32(dd.SelectedValue); i++)
        {
            NoOfQuestionDescribe.Add(i);
        }
        RepeaterItem ri = (RepeaterItem)dd.Parent;
        Repeater r = (Repeater)ri.FindControl("rptQA");
        r.DataSource = NoOfQuestionDescribe;
        r.DataBind();
    }

    protected void lnkPri1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
        ltrStep.Text = "1";
    }

    protected void lnkNext2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
        ltrStep.Text = "3";
    }

    protected void lnkPri2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel2.Visible = true;
        ltrStep.Text = "2";
    }

    protected void lnkNext3_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = true;
        ltrStep.Text = "4";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        Panel3.Visible = true;
        ltrStep.Text = "3";
    }

    protected void ddCompanyName_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ddCityName.DataSource = ExperienceObject.GetCompanyCity(Convert.ToInt32(ddCompanyName.SelectedValue));
        //ddCityName.DataTextField = "Name";
        //ddCityName.DataValueField = "ID";
        //ddCityName.DataBind();
        //ddCityName.Items.Insert(0, "Select City");
        //ddCityName.Items.Add("Other");
    }

    protected void lnkPostExperience_Click(object sender, EventArgs e)
    {
        Boolean InCampus;
        if (rdIncampus.Checked)
        {
            InCampus = true;
        }
        else
        {
            InCampus = false;
        }
        int ExperienceID;
        //Boolean IsSelected;
        int CompanyID = Convert.ToInt32(ddCompanyName.SelectedValue);
        int DesignationID = Convert.ToInt32(ddDesignation.SelectedValue);
        int DDJobTypeId = Convert.ToInt32(ddJobType.SelectedValue);
        int ctc = Convert.ToInt32(txtCTC.Text);
        int NoOfRounds = Convert.ToInt32(ddNoOfRound.SelectedValue);
        int Rate = Convert.ToInt32(ddRate.SelectedValue);
        int UId = Convert.ToInt32(Session["UserID"]);

        if (rdSelected.Checked)
        {
            ExperienceID = ExperienceObject.AddExperience(CompanyID,DesignationID , txtYear.Text, InCampus, DDJobTypeId, 1, ctc,NoOfRounds ,Rate , txtSummary.Text, UId);
        }
        else
        {
            ExperienceID = ExperienceObject.AddExperience(CompanyID, DesignationID, txtYear.Text, InCampus, DDJobTypeId, 0, ctc, NoOfRounds, Rate, txtSummary.Text, UId);
        }
        
        foreach (RepeaterItem item in rptRound.Items)
        {
            DropDownList ddRoundType = (DropDownList)item.FindControl("ddRoundType");
            DropDownList ddNoOfQuestion = (DropDownList)item.FindControl("ddNoOfQuestion");
            DropDownList ddLevelOfDifficulty = (DropDownList)item.FindControl("ddLevelOfDifficulty");
            int ExperienceRoundID = ExperienceObject.AddExperienceRound(ExperienceID, Convert.ToInt32(ddRoundType.SelectedValue), Convert.ToInt32(ddNoOfQuestion.SelectedValue), Convert.ToInt32(ddLevelOfDifficulty.SelectedValue));
            Repeater rptQA = (Repeater)item.FindControl("rptQA");
            foreach (RepeaterItem item1 in rptQA.Items)
            {
                TextBox txtQuestion = (TextBox)item1.FindControl("txtQuestion");
                TextBox txtAnswer = (TextBox)item1.FindControl("txtAnswer");
                ExperienceObject.AddExperienceRoundQA(ExperienceRoundID, txtQuestion.Text, txtAnswer.Text);
            }
        }
        Response.Redirect("Default.aspx");
    }

    protected void rdNotSelected_CheckedChanged(object sender, EventArgs e)
    {
        PanelCTC.Visible = false;
    }

    protected void rdSelected_CheckedChanged(object sender, EventArgs e)
    {
        PanelCTC.Visible = true;
    }
}