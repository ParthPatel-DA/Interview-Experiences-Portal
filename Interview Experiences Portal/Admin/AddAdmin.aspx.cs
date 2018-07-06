using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    ServiceClient AdminObject = new ServiceClient();
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
        rptAdmin.DataSource = AdminObject.BindAdminGrid(Convert.ToInt32(Session["AdminID"]));
        rptAdmin.DataBind();
        foreach (RepeaterItem Item in rptAdmin.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            if (CBy.Value != "")
            {
                string AdminName = AdminObject.BindCBy(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
        }
        rptAdminDeactive.DataSource = AdminObject.BindAdminDeactiveGrid();
        rptAdminDeactive.DataBind();
        foreach (RepeaterItem Item in rptAdminDeactive.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            if (CBy.Value != "")
            {
                string AdminName = AdminObject.BindCBy(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
        }
    }

    protected void btnAddAdmin_Click(object sender, EventArgs e)
    {
        string PageName = HttpContext.Current.Request.Url.Authority + System.IO.Path.GetDirectoryName(Request.Url.AbsolutePath).Replace("\\", "/") + "/";
        AdminObject.AddAdmin(txtFirstName.Text, txtLastName.Text, txtEmailID.Text, txtContactNumber.Text, Convert.ToInt32(Session["AdminID"]), PageName);
        Response.Redirect("AddAdmin.aspx");
    }

    protected void rptAdmin_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        AdminObject.ChangeActivation(Convert.ToInt32(e.CommandArgument), e.CommandName);
        BindData();
    }

    protected void rptAdminDeactive_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        AdminObject.ChangeActivation(Convert.ToInt32(e.CommandArgument), e.CommandName);
        BindData();
    }
}