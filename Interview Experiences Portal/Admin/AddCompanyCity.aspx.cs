using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InterviewExperiencesServiceReference;

public partial class AddCompanyCity : System.Web.UI.Page
{
    ServiceClient CityObject = new ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        //ddCompanyName.DataSource = CityObject.getCompanyList();
        //ddCompanyName.DataTextField = "Name";
        //ddCompanyName.DataValueField = "CompanyID";
        //ddCompanyName.DataBind();
        //ddCompanyName.Items.Insert(0, "Select Company");
        
    }

    protected void ddCompanyName_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList dd = (DropDownList)sender;
        //ddCompanyCountry.DataSource = CityObject.GetCountryList();
        //ddCompanyCountry.DataTextField = "Name";
        //ddCompanyCountry.DataValueField = "ID";
        //ddCompanyCountry.DataBind();
        //ddCompanyCountry.Items.Insert(0, "Select Country");
    }

    protected void ddCompanyCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList dd = (DropDownList)sender;
        //ddCompanyState.DataSource = CityObject.GetStateList(Convert.ToInt32(dd.SelectedValue));
        //ddCompanyState.DataTextField = "Name";
        //ddCompanyState.DataValueField = "ID";
        //ddCompanyState.DataBind();
        //ddCompanyState.Items.Insert(0, "Select State");
    }

    protected void ddCompanyState_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList dd = (DropDownList)sender;
        //ddCompanyCity.DataSource = CityObject.GetCityList(Convert.ToInt32(dd.SelectedValue));
        //ddCompanyCity.DataTextField = "Name";
        //ddCompanyCity.DataValueField = "ID";
        //ddCompanyCity.DataBind();
        //ddCompanyCity.Items.Insert(0, "Select City");
    }
}