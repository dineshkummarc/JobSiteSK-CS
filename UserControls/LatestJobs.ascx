<%@ Control Language="C#" CodeFile="LatestJobs.ascx.cs" Inherits="LatestJobs_ascx" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
	<services>
		<asp:servicereference Path="~/webservice.asmx" />
	</services>
</asp:ScriptManagerProxy>

<asp:GridView ID="GridView1" Runat="server" DataSourceID="ObjectDataSource1" AllowPaging="True"
    AutoGenerateColumns="False" Width="100%" DataKeyNames="PostingID" 
onrowdatabound="GridView1_RowDataBound" >
    <Columns>
    	<asp:templatefield>
			<itemtemplate>
    			<asp:ImageButton ID="ImageButton1" runat="server" 
				ImageUrl="~/images/showdetails.jpg" ToolTip="Click here for more details" />
				<asp:Panel ID="pnlMsg" runat="server"></asp:Panel>
				<cc1:PopupControlExtender 
				ID="PopupControlExtender1" 
				runat="server" 
				DynamicContextKey='<%# Eval("PostingId") %>' 
				DynamicControlID="Panel1" 
				DynamicServiceMethod="GetToolTipText" 
				PopupControlID="Panel1" 
				TargetControlID="ImageButton1" 
				Position="Left" >
				</cc1:PopupControlExtender>
			</itemtemplate>
			<itemstyle verticalalign="Top" width="5%" />
		</asp:templatefield>
        <asp:HyperLinkField HeaderText="Latest Jobs!!" NavigateUrl="~/jobseeker/viewjobposting.aspx?id="
            DataNavigateUrlFields="postingid" DataNavigateUrlFormatString="~/jobseeker/viewjobposting.aspx?id={0}"
            DataTextField="Title">
        <itemstyle horizontalalign="Left" />
        </asp:HyperLinkField>
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="JobSiteStarterKit.BOL.JobPosting"
    SelectMethod="GetLatest">
</asp:ObjectDataSource>
<asp:Panel ID="Panel1" runat="server" 
SkinID="TooltipPanel" HorizontalAlign="Left">
</asp:Panel>

