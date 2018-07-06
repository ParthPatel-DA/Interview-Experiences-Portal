using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class AddDesignation : System.Web.UI.Page
{
    ServiceClient DesignationObject = new ServiceClient();
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
        rptDesignation.DataSource = DesignationObject.BindDesignationGrid();
        rptDesignation.DataBind();
        foreach (RepeaterItem Item in rptDesignation.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            HiddenField UBy = (HiddenField)Item.FindControl("HiddenField3");
            Literal LtrUBY = (Literal)Item.FindControl("LtrUBy");
            Label lblUOn = (Label)Item.FindControl("Label3");
            if (lblUOn.Text == "01-01-0001")
                lblUOn.Text = "---";
            if (CBy.Value != "")
            {
                string AdminName = DesignationObject.BindCBy(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
            if (UBy.Value != "")
            {
                string AdminName = DesignationObject.BindCBy(Convert.ToInt32(UBy.Value));
                LtrUBY.Text = AdminName;
            }
            else
            {
                LtrUBY.Text = "---";
            }
        }
        rptDesignationDeleted.DataSource = DesignationObject.BindDesignationDeletedGrid();
        rptDesignationDeleted.DataBind();
        foreach (RepeaterItem Item in rptDesignationDeleted.Items)
        {
            HiddenField CBy = (HiddenField)Item.FindControl("HiddenField2");
            Literal LtrCBY = (Literal)Item.FindControl("LtrCBy");
            HiddenField UBy = (HiddenField)Item.FindControl("HiddenField3");
            Literal LtrUBY = (Literal)Item.FindControl("LtrUBy");
            Label lblUOn = (Label)Item.FindControl("Label3");
            if (lblUOn.Text == "01-01-0001")
                lblUOn.Text = "---";
            if (CBy.Value != "")
            {
                string AdminName = DesignationObject.BindCBy(Convert.ToInt32(CBy.Value));
                LtrCBY.Text = AdminName;
            }
            else
            {
                LtrCBY.Text = "---";
            }
            if (UBy.Value != "")
            {
                string AdminName = DesignationObject.BindCBy(Convert.ToInt32(UBy.Value));
                LtrUBY.Text = AdminName;
            }
            else
            {
                LtrUBY.Text = "---";
            }
        }
    }

    protected void btnAddDesignation_Click(object sender, EventArgs e)
    {
        if(DesignationObject.AddDesignation(txtDesignation.Text, Convert.ToInt32(Session["AdminID"])))
        {
            txtDesignation.Text = "";
            BindData();
        }
    }

    protected void rptDesignation_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        DesignationObject.ChangeActivation(Convert.ToInt32(e.CommandArgument), e.CommandName);
        BindData();
    }

    protected void rptDesignationDeleted_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        DesignationObject.ChangeActivation(Convert.ToInt32(e.CommandArgument), e.CommandName);
        BindData();
    }
}