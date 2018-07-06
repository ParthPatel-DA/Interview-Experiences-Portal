using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PanelSelected.Visible = true;
        }
    }

    protected void rdIsSelectY_CheckedChanged(object sender, EventArgs e)
    {
        PanelSelected.Visible = true;
    }

    protected void rdIsSelectN_CheckedChanged(object sender, EventArgs e)
    {
        PanelSelected.Visible = false;
    }
}