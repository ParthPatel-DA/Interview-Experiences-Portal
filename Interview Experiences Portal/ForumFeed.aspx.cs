using InterviewExperiencesServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForumFeed : System.Web.UI.Page
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
        txtAnswer.Text = "";
        txtAddQuestion.Text = "";
        int LOD = 0, NOR = 0;
        rptQue.DataSource = QAObject.GetQuestionList();
        rptQue.DataBind();
        foreach (RepeaterItem item in rptQue.Items)
        {
            Repeater rptAns = (Repeater)item.FindControl("rptAns");
            HiddenField hdnQuestionID = (HiddenField)item.FindControl("hdnQuestionID");
            HiddenField hdnUser = (HiddenField)item.FindControl("hdnUser");
            LinkButton LinkButton3 = (LinkButton)item.FindControl("LinkButton3");
            LinkButton3.Text = QAObject.BindCByUser(Convert.ToInt32(hdnUser.Value));
            HiddenField hdnTime = (HiddenField)item.FindControl("hdnTime");
            Label lblTime = (Label)item.FindControl("lblTime");
            TimeSpan time = DateTime.Now - Convert.ToDateTime(hdnTime.Value);
            int Year = DateTime.Now.Year - new DateTime(DateTime.Now.Subtract(time).Ticks).Year;
            int Month = new DateTime(DateTime.Now.Subtract(time).Ticks).Month - DateTime.Now.Month;
            lblTime.Text = Year + " Year " + Month + " Month " + (((Year * 365) + (Month * 30)) - time.Days) + " Days ago";



            //IList<string> Data = QAObject.(Convert.ToInt32(hdnQuestionID.Value));
            //lblQue.Text = Data[0];

            rptAns.DataSource = QAObject.GetAnswerByQuestionID(Convert.ToInt32(hdnQuestionID.Value));
            rptAns.DataBind();
            foreach (RepeaterItem item1 in rptAns.Items)
            {
                HiddenField hdnUserAns = (HiddenField)item1.FindControl("hdnUserAns");
                LinkButton LinkButton334 = (LinkButton)item1.FindControl("LinkButton334");
                LinkButton334.Text = QAObject.BindCByUser(Convert.ToInt32(hdnUserAns.Value));
                HiddenField hdnAnsTime = (HiddenField)item1.FindControl("hdnAnsTime");
                Label lblAnsTime = (Label)item1.FindControl("lblAnsTime");
                TimeSpan time2 = DateTime.Now - Convert.ToDateTime(hdnTime.Value);
                int Year2 = DateTime.Now.Year - new DateTime(DateTime.Now.Subtract(time2).Ticks).Year;
                int Month2 = new DateTime(DateTime.Now.Subtract(time2).Ticks).Month - DateTime.Now.Month;
                lblAnsTime.Text = Year2 + " Year " + Month2 + " Month " + (((Year2 * 365) + (Month2 * 30)) - time2.Days) + " Days ago";
            }


        }
    }

    protected void rptQue_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "ViewUserProfile")
        {
            //Session["DAID"] = e.CommandArgument;
            Response.Redirect("UserProfile.aspx");
        }
        if(e.CommandName == "PostAnswer")
        {
            Session["QID"] = Convert.ToInt32(e.CommandArgument);
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modal-default", "$('#basic1').modal({backdrop:'static', keyboard: false});", true);
        }
    }

    protected void rptAns_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "ViewUserProfile")
        {
            //Session["DAID"] = e.CommandArgument;
            Response.Redirect("UserProfile.aspx");
        }
    }

    protected void btnPostAnswer_Click(object sender, EventArgs e)
    {
        QAObject.AddForumAnswer(Convert.ToInt32(Session["QID"]), txtAnswer.Text, Convert.ToInt32(Session["UserID"]));
        BindData();
    }

    protected void btnAddQuestion_Click(object sender, EventArgs e)
    {
        QAObject.AddForumQuestion(txtAddQuestion.Text, Convert.ToInt32(Session["UserID"]));
        BindData();
    }
}