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

public partial class viewjobposting_aspx : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Roles.IsUserInRole(ConfigurationManager.AppSettings["jobseekerrolename"]))
        {
            Response.Redirect("~/customerrorpages/NotAuthorized.aspx");
        }

        if (!Page.IsPostBack)
        {
            int postingid;
            postingid = int.Parse(Request.QueryString["id"]);
            JobPosting p=JobPosting.GetPosting(postingid);
            lblCity.Text = p.City;
            lblCompany.Text = Company.GetCompanyName(p.CompanyID);
            
            btnViewProfile.CommandArgument=p.CompanyID.ToString();
            ModalPopupExtender1.DynamicContextKey=p.CompanyID.ToString();
            
            lblContactPerson.Text = p.ContactPerson;
            lblCountry.Text = Country.GetCountryName(p.CountryID);
            lblDept.Text = p.Department;
            lblDesc.Text = p.Description.Replace("\r\n","<br>");
            lblEduLevel.Text = EducationLevel.GetEducationLevelName(p.EducationLevelID);
            lblJobCode.Text = p.JobCode;
            lblJobType.Text = JobType.GetJobTypeName(p.JobTypeID);
            lblMaxSal.Text = p.MaxSalary.ToString("C");
            lblMinSal.Text = p.MinSalary.ToString("C");
            lblPostDt.Text = p.PostingDate.ToShortDateString();
            lblState.Text = State.GetStateName(p.StateID);
            lblTitle.Text = p.Title;

        }
        
        Page.DataBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/jobseeker/jobsearch.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MyJob j = new MyJob();
        j.PostingID = int.Parse(Request.QueryString["id"]);
        j.UserName = Profile.UserName;
        MyJob.Insert(j);
    }
}
