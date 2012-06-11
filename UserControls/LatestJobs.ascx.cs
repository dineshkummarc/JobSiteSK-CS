using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using JobSiteStarterKit.BOL;
using System.Web.Script.Services;
using AjaxControlToolkit;

public partial class LatestJobs_ascx:UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count == 0)
        {
            Panel1.Visible = false;
        }

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
           PopupControlExtender popup=(PopupControlExtender)e.Row.FindControl("PopupControlExtender1");
           popup.DynamicServicePath = "~/webservice.asmx"; 
        }
    }
}
