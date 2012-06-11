using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class postinglist_aspx : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Roles.IsUserInRole(ConfigurationManager.AppSettings["employerrolename"]))
        {
            Response.Redirect("~/customerrorpages/NotAuthorized.aspx");
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Response.Redirect("~/employer/addeditposting.aspx?id=" + e.CommandArgument);
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton b = (ImageButton)e.Row.Cells[4].Controls[0];
            b.CommandName = "edit";
            b.CommandArgument = GridView1.DataKeys[e.Row.RowIndex].Value.ToString();

        }
    }

}
