using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using JobSiteStarterKit.BOL;
using System.Text;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class WebService : System.Web.Services.WebService 
{

    [WebMethod]
    [ScriptMethod]
    public string GetToolTipText(int contextKey)
    {
        try
        {
            JobPosting job = JobPosting.GetPosting(contextKey);
            return job.Description;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        
    }

    [WebMethod]
    [ScriptMethod]
    public string GetCompanyProfile(int contextKey)
    {
        Company c=Company.GetCompany(contextKey);
        StringBuilder sb=new StringBuilder();
        sb.Append("<table width='100%'>");

        sb.Append("<tr><td colspan='2' class='dataentryformlabelbig' align='left'>");
        sb.Append("Company Details");
        sb.Append("</td></tr>");

        sb.Append("<tr><td nowrap align='right'>");
        sb.Append("Company Name :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.CompanyName);
        sb.Append("</td></tr>");

        sb.Append("<tr><td nowrap valign='top' align='right'>");
        sb.Append("Brief Profile :");
        sb.Append("</td>");
        sb.Append("<td><textarea readonly='true' rows=5 cols=30>");
        sb.Append(c.BriefProfile);
        sb.Append("</textarea></td></tr>");

        sb.Append("<tr><td colspan='2' class='dataentryformlabelbig' align='left'>");
        sb.Append("Location");
        sb.Append("</td></tr>");

        sb.Append("<tr><td valign='top' align='right'>");
        sb.Append("Address 1 :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.Address1);
        sb.Append("</td></tr>");

        sb.Append("<tr><td valign='top' align='right'>");
        sb.Append("Address 2 :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.Address2);
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("City :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.City);
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("State :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(State.GetStateName(c.StateID));
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("Country :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(Country.GetCountryName(c.CountryID));
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("ZIP :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.ZIP);
        sb.Append("</td></tr>");

        sb.Append("<tr><td colspan='2' class='dataentryformlabelbig' align='left'>");
        sb.Append("Contact Details");
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("Phone :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.Phone);
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("Fax :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.Fax);
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("Email :");
        sb.Append("</td>");
        sb.Append("<td>");
        sb.Append(c.Email);
        sb.Append("</td></tr>");

        sb.Append("<tr><td align='right'>");
        sb.Append("Web Site :");
        sb.Append("</td>");
        sb.Append("<td><a href='");
        sb.Append(c.WebSiteUrl);
        sb.Append("'>");
        sb.Append(c.WebSiteUrl);
        sb.Append("</a></td></tr>");

        sb.Append("</table>");
        
        return sb.ToString();
        
    }

}

