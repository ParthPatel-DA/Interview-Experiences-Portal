using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class AdminMainMaster : System.Web.UI.MasterPage
{
    ServiceClient Admin = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["AdminID"] = 1;
        IList<string> list = Admin.GetAdminDetail(Convert.ToInt32(Session["AdminID"]));
        ltrName.Text = list[0] + " " + list[1];
        lblAdminName.Text = list[0] + " " + list[1];
        ltrAdminEmail.Text = list[3];
        ltrContactNo.Text = list[4];
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["AdminID"] = null;
        Response.Redirect("Login.aspx");
    }
}
