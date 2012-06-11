using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using JobSiteStarterKit.BOL;

public partial class resumesearch_aspx : Page
{
    private void BindGrid()
    {
        int countryid = -1, stateid = -1;
        if (ddlCountry.SelectedItem != null)
            countryid = int.Parse(ddlCountry.SelectedValue);
        if (ddlState.SelectedItem != null)
            stateid = int.Parse(ddlState.SelectedValue);

        DataSet ds = Resume.SearchResumes(txtSkills.Text, countryid, stateid,txtCity.Text);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        if (GridView1.Rows.Count <= 0)
        {
            lblMsg.Text = "No records found!";
        }
        else
        {
            lblMsg.Text = "";
        }
        
        
        UpdatePanel2.Update();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton b = (ImageButton)e.Row.Cells[4].Controls[0];
            b.CommandName = "viewdetails";
            b.CommandArgument = GridView1.DataKeys[e.Row.RowIndex].Value.ToString();

            e.Row.Cells[1].Text = EducationLevel.GetEducationLevelName(int.Parse(e.Row.Cells[1].Text));
            e.Row.Cells[2].Text = ExperienceLevel.GetExperienceLevelName(int.Parse(e.Row.Cells[2].Text));

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Roles.IsUserInRole(ConfigurationManager.AppSettings["employerrolename"]))
        {
            Response.Redirect("~/customerrorpages/NotAuthorized.aspx");
        }

        if (!Page.IsPostBack)
        {
            FillCountries();
            FillStates();
            lblResumeCount.Text = "(Currently we have " + Resume.GetResumeCount() + " resumes !!!)";
        }
    }

    private void FillCountries()
    {
        ddlCountry.DataSource = Country.GetCountries();
        ddlCountry.DataTextField = "CountryName";
        ddlCountry.DataValueField = "CountryID";
        ddlCountry.DataBind();
    }

    private void FillStates()
    {
        ddlState.DataSource = State.GetStates(int.Parse(ddlCountry.SelectedValue));
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateID";
        ddlState.DataBind();
    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillStates();
        txtCity.Enabled = false;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("~/employer/viewresume.aspx?id=" + e.CommandArgument);
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedIndex > 0)
        {
            txtCity.Enabled = true;
        }
        else
        {
            txtCity.Enabled = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        BindGrid();
    }
}
