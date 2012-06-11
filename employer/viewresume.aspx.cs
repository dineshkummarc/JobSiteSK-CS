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
using ASP;

public partial class viewresume_aspx : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Roles.IsUserInRole(ConfigurationManager.AppSettings["employerrolename"]))
        {
            Response.Redirect("~/customerrorpages/NotAuthorized.aspx");
        }

        Resume r = Resume.GetResume(int.Parse(Request.QueryString["id"]));

        ProfileCommon p = Profile.GetProfile(r.UserName);
        lblName.Text = "Full Name : " + p.FirstName + " " + p.LastName;
        lblEducation.Text = "Education Level : " + EducationLevel.GetEducationLevelName(r.EducationLevelID);
        lblExperience.Text = "Experience Level : " + ExperienceLevel.GetExperienceLevelName(r.ExperienceLevelID);
        lblCoveringLetter.Text = r.CoveringLetterText.Replace("\r\n", "<br>");
        lblResume.Text = r.ResumeText.Replace("\r\n","<br>");

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/employer/resumesearch.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MyResume r = new MyResume();
        r.ResumeID = int.Parse(Request.QueryString["id"]);
        r.UserName = Profile.UserName;
        MyResume.Insert(r);
    }
}
