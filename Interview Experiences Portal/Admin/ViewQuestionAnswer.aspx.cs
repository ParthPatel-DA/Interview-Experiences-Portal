using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_ViewQuestionAnswer : System.Web.UI.Page
{
    ServiceClient QuestionObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        rptQuestion.DataSource = QuestionObject.GetQuestionList();
        rptQuestion.DataBind();
        foreach (RepeaterItem Item in rptQuestion.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField1");
            Literal LtrCBY = (Literal)Item.FindControl("lblName");
            if (CBy.Value != "")
            {
                string AdminName = QuestionObject.BindCByUser(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
        }
    }

    protected void rptQuestion_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#modal-default').modal({backdrop:'static', keyboard: false});", true);
        lblQuestion.Text = QuestionObject.GetQuestionByID(Convert.ToInt32(e.CommandArgument));
        rptAnswer.DataSource = QuestionObject.GetAnswerByQuestionID(Convert.ToInt32(e.CommandArgument));
        rptAnswer.DataBind();
        foreach (RepeaterItem Item in rptAnswer.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            Literal LtrCBY = (Literal)Item.FindControl("lblUserName");
            if (CBy.Value != "")
            {
                string AdminName = QuestionObject.BindCByUser(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
        }
    }
}