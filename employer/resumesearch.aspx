<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="resumesearch.aspx.cs" Inherits="resumesearch_aspx" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

<div align="center">
        <asp:Label ID="Label14" Runat="server" Text="Search Resume Database" SkinID="FormHeading"></asp:Label>
    <br />
    <asp:Label ID="lblResumeCount" Runat="server" SkinID="Slogan"></asp:Label>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<contenttemplate>
			<table style="width: 100%">
				<tr>
					<td align="right" valign="top" width="40%">
						<asp:Label ID="Label1" Runat="server" Text="Skills :"></asp:Label>
					</td>
					<td align="left" style="width: 100px">
						<asp:TextBox ID="txtSkills" Runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" 
						ControlToValidate="txtSkills" Display="Dynamic" 
						ErrorMessage="Please enter skills to search for"> *</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label3" Runat="server" Text="Country :"></asp:Label>
					</td>
					<td align="left" style="width: 100px">
						<asp:DropDownList ID="ddlCountry" Runat="server" AutoPostBack="True" 
						OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label4" Runat="server" Text="State :"></asp:Label>
					</td>
					<td align="left" style="width: 100px">
						<asp:DropDownList ID="ddlState" Runat="server" AutoPostBack="True" 
                            onselectedindexchanged="ddlState_SelectedIndexChanged">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label2" Runat="server" Text="City :"></asp:Label>
					</td>
					<td align="left" style="width: 100px">
						<asp:TextBox ID="txtCity" Runat="server" Enabled="False"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" valign="top">
						<asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Images/SearchButton.gif" onclick="ImageButton1_Click" />
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" valign="top">
						<asp:Label ID="lblMsg" runat="server" SkinID="FormLabel"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="2" valign="top">
						<asp:ValidationSummary ID="ValidationSummary1" Runat="server" />
					</td>
				</tr>
			</table>
		</contenttemplate>
	</asp:UpdatePanel>
	<asp:UpdateProgress ID="UpdateProgress1" runat="server" 
	AssociatedUpdatePanelID="UpdatePanel1">
		<progresstemplate><asp:Image ID="Image1" runat="server" ImageUrl="~/images/progress.gif" /></progresstemplate>
	</asp:UpdateProgress>
	<br />
</div>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
		<contenttemplate>
			<asp:GridView ID="GridView1" Runat="server" AllowPaging="True" 
			AutoGenerateColumns="False" DataKeyNames="ResumeID" 
			OnPageIndexChanging="GridView1_PageIndexChanging" 
			OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" 
			Width="100%">
				<columns>
					<asp:boundfield DataField="JobTitle" HeaderText="Title">
					</asp:boundfield>
					<asp:boundfield DataField="educationlevelid" HeaderText="Education" 
					ShowHeader="False">
					</asp:boundfield>
					<asp:boundfield DataField="experiencelevelid" HeaderText="Experience">
					</asp:boundfield>
					<asp:boundfield DataField="TargetCity" HeaderText="Location">
					</asp:boundfield>
					<asp:buttonfield CommandName="viewdetails" ButtonType="Image" 
                        ImageUrl="~/Images/ShowDetails.gif">
					</asp:buttonfield>
				</columns>
			</asp:GridView>
		</contenttemplate>
	</asp:UpdatePanel>
    <br />
    <br />
</asp:Content>
