using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_ViewCompany : System.Web.UI.Page
{
    ServiceClient CompanyObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
        if (Session["AdminID"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    private void BindData()
    {
        rptCompany.DataSource = CompanyObject.BindCompanyGrid();
        rptCompany.DataBind();
        foreach (RepeaterItem Item in rptCompany.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            int CBY = Convert.ToInt32(CBy.Value);
            string AdminName = CompanyObject.BindCBy(CBY);
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            LtrCBY.Text = AdminName;
        }
        rptCompanyDeactive.DataSource = CompanyObject.BindCompanyDeactiveGrid();
        rptCompanyDeactive.DataBind();
        foreach (RepeaterItem Item in rptCompanyDeactive.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            int CBY = Convert.ToInt32(CBy.Value);
            string AdminName = CompanyObject.BindCBy(CBY);
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            LtrCBY.Text = AdminName;
        }
    }

    protected void rptCompany_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        CompanyObject.ChangeActivation(Convert.ToInt32(e.CommandArgument),e.CommandName);
        BindData();
    }
}