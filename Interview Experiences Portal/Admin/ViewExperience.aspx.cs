using InterviewExperiencesServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewExperience : System.Web.UI.Page
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
        rptExperience.DataSource = ExperienceObject.GetActiveExperienceList();
        rptExperience.DataBind();
        foreach (RepeaterItem Item in rptExperience.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("hidCompanyID");
            Label lblName = (Label)Item.FindControl("lblName");
            string AdminName = ExperienceObject.BindCByUser(Convert.ToInt32(CBy.Value));
            lblName.Text = AdminName;
            HiddenField hdnCompanyID = (HiddenField)Item.FindControl("HiddenField1");
            Label lblCompanyName = (Label)Item.FindControl("lblCompanyName");
            IList<string> CompanyName = ExperienceObject.GetCompanyName(Convert.ToInt32(hdnCompanyID.Value));
            lblCompanyName.Text = CompanyName[0];
            HiddenField HiddenField3 = (HiddenField)Item.FindControl("HiddenField3");
            Label lblDesignation = (Label)Item.FindControl("lblDesignation");
            string DesignationName = ExperienceObject.GetDesignationName(Convert.ToInt32(HiddenField3.Value));
            lblDesignation.Text = DesignationName;
            HiddenField HiddenField4 = (HiddenField)Item.FindControl("HiddenField4");
            Label lblSelected = (Label)Item.FindControl("lblSelected");
            if (Convert.ToBoolean(HiddenField4.Value) == true)
            {
                lblSelected.Text = "Accepted Offer";
            }
            else if (Convert.ToBoolean(HiddenField4.Value) == false)
            {
                lblSelected.Text = "No Offer";
            }
            else
            {
                lblSelected.Text = "---";
            }
        }
        rptCompanyDeactive.DataSource = ExperienceObject.GetDeactiveExperienceList();
        rptCompanyDeactive.DataBind();
        foreach (RepeaterItem Item in rptCompanyDeactive.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("hidCompanyID");
            Label lblName = (Label)Item.FindControl("lblName");
            string AdminName = ExperienceObject.BindCByUser(Convert.ToInt32(CBy.Value));
            lblName.Text = AdminName;
            HiddenField hdnCompanyID = (HiddenField)Item.FindControl("HiddenField1");
            Label lblCompanyName = (Label)Item.FindControl("lblCompanyName");
            IList<string> CompanyName = ExperienceObject.GetCompanyName(Convert.ToInt32(hdnCompanyID.Value));
            lblCompanyName.Text = CompanyName[0];
            HiddenField HiddenField3 = (HiddenField)Item.FindControl("HiddenField3");
            Label lblDesignation = (Label)Item.FindControl("lblDesignation");
            string DesignationName = ExperienceObject.GetDesignationName(Convert.ToInt32(HiddenField3.Value));
            lblDesignation.Text = DesignationName;
            HiddenField HiddenField4 = (HiddenField)Item.FindControl("HiddenField4");
            Label lblSelected = (Label)Item.FindControl("lblSelected");
            if (Convert.ToInt32(HiddenField4.Value) == 1)
            {
                lblSelected.Text = "Accepted Offer";
            }
            else if (Convert.ToInt32(HiddenField4.Value) == 2)
            {
                lblSelected.Text = "No Offer";
            }
            else if (Convert.ToInt32(HiddenField4.Value) == 3)
            {
                lblSelected.Text = "Declined Offer";
            }
            else
            {
                lblSelected.Text = "---";
            }
        }
    }

    protected void rptExperience_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#modal-default').modal({backdrop:'static', keyboard: false});", true);
        IList<string> list = ExperienceObject.GetExperienceDetail(Convert.ToInt32(e.CommandArgument));
        lblUserName.Text = ExperienceObject.BindCByUser(Convert.ToInt32(list[0]));
        IList<string> data = ExperienceObject.GetCompanyName(Convert.ToInt32(list[1]));
        lblCompanyName.Text = data[0];
        lblDesignation.Text = ExperienceObject.GetDesignationName(Convert.ToInt32(list[0]));
        lblJobType.Text = ExperienceObject.GetJobTypeName(Convert.ToInt32(list[4]));
        lblYear.Text = list[3];
        //lblIsSelected.Text = list[5];
        lblCTC.Text = list[6];
        lblInCampus.Text = list[7];
        if (Convert.ToBoolean(list[5]) == true)
        {
            lblIsSelected.Text = "Accepted Offer";
        }
        else if (Convert.ToBoolean(list[5]) == false)
        {
            lblIsSelected.Text = "No Offer";
        }
        else
        {
            lblIsSelected.Text = "---";
        }
        rptRound.DataSource = ExperienceObject.GetExperienceRoundFeedList(Convert.ToInt32(e.CommandArgument));
        rptRound.DataBind();
        foreach (RepeaterItem item in rptRound.Items)
        {
            HiddenField HiddenField6 = (HiddenField)item.FindControl("HiddenField6");
            HiddenField HiddenField5 = (HiddenField)item.FindControl("HiddenField5");
            Literal ltrRoundName = (Literal)item.FindControl("ltrRoundName");
            Repeater rptQA = (Repeater)item.FindControl("rptQA");
            ltrRoundName.Text = ExperienceObject.GetRoundName(Convert.ToInt32(HiddenField6.Value));
            rptQA.DataSource = ExperienceObject.GetExperienceQuestionFeedList(Convert.ToInt32(HiddenField5.Value));
            rptQA.DataBind();
            foreach (RepeaterItem item1 in rptQA.Items)
            {
                Literal Literal1 = (Literal)item1.FindControl("Literal1");
                if(Literal1.Text == "")
                {
                    Literal1.Text = "No Answer";
                }
            }
        }
    }

    protected void rptCompanyDeactive_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#modal-default').modal({backdrop:'static', keyboard: false});", true);
        IList<string> list = ExperienceObject.GetExperienceDetail(Convert.ToInt32(e.CommandArgument));
        lblUserName.Text = ExperienceObject.BindCByUser(Convert.ToInt32(list[0]));
        IList<string> data = ExperienceObject.GetCompanyName(Convert.ToInt32(list[1]));
        lblCompanyName.Text = data[0];
        lblDesignation.Text = ExperienceObject.GetDesignationName(Convert.ToInt32(list[0]));
        lblJobType.Text = ExperienceObject.GetJobTypeName(Convert.ToInt32(list[4]));
        lblYear.Text = list[3];
        //lblIsSelected.Text = list[5];
        lblCTC.Text = list[6];
        lblInCampus.Text = list[7];
        if (Convert.ToInt32(list[5]) == 1)
        {
            lblIsSelected.Text = "Accepted Offer";
        }
        else if (Convert.ToInt32(list[5]) == 2)
        {
            lblIsSelected.Text = "No Offer";
        }
        else if (Convert.ToInt32(list[5]) == 3)
        {
            lblIsSelected.Text = "Declined Offer";
        }
        else
        {
            lblIsSelected.Text = "---";
        }
        rptRound.DataSource = ExperienceObject.GetExperienceRoundFeedList(Convert.ToInt32(e.CommandArgument));
        rptRound.DataBind();
        foreach (RepeaterItem item in rptRound.Items)
        {
            HiddenField HiddenField6 = (HiddenField)item.FindControl("HiddenField6");
            HiddenField HiddenField5 = (HiddenField)item.FindControl("HiddenField5");
            Literal ltrRoundName = (Literal)item.FindControl("ltrRoundName");
            Repeater rptQA = (Repeater)item.FindControl("rptQA");
            ltrRoundName.Text = ExperienceObject.GetRoundName(Convert.ToInt32(HiddenField6.Value));
            rptQA.DataSource = ExperienceObject.GetExperienceQuestionFeedList(Convert.ToInt32(HiddenField5.Value));
            rptQA.DataBind();
            foreach (RepeaterItem item1 in rptQA.Items)
            {
                Literal Literal1 = (Literal)item1.FindControl("Literal1");
                if (Literal1.Text == "")
                {
                    Literal1.Text = "No Answer";
                }
            }
        }
    }
}