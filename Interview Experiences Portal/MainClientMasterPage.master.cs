using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainClientMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        Session["UserID"] = null;
        Response.Redirect("Login.aspx");
    }
}
