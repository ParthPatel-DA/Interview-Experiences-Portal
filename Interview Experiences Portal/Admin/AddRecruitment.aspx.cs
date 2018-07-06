using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class AddRecruitment : System.Web.UI.Page
{
    ServiceClient RecruitmentObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        ddCompanyName.DataSource = RecruitmentObject.getCompanyList();
        ddCompanyName.DataTextField = "Name";
        ddCompanyName.DataValueField = "CompanyID";
        ddCompanyName.DataBind();
        ddCompanyName.Items.Insert(0,"Select Company");

        ddProgramName.DataSource = RecruitmentObject.GetProgramList();
        ddProgramName.DataTextField = "ProgramName";
        ddProgramName.DataValueField = "ProgramID";
        ddProgramName.DataBind();
        ddProgramName.Items.Insert(0, "Select Program");

        ddDesignation.DataSource = RecruitmentObject.getDesignationList();
        ddDesignation.DataTextField = "Name";
        ddDesignation.DataValueField = "DesignationID";
        ddDesignation.DataBind();
        ddDesignation.Items.Insert(0, "Select Designation");

    }

    protected void btnAddRecruitment_Click(object sender, EventArgs e)
    {
        RecruitmentObject.AddRecruitment(Convert.ToInt32(ddCompanyName.SelectedValue), Convert.ToInt32(ddProgramName.SelectedValue), Convert.ToInt32(txtSelectedStudents.Text), Convert.ToInt32(txtAppearedStudents.Text), txtYear.Text, Convert.ToInt32(txtPackage.Text), Convert.ToInt32(ddDesignation.SelectedValue), Convert.ToInt32(Session["AdminID"]));
        Response.Redirect("AddRecruitment.aspx");
    }
}