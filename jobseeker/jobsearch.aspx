<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="jobsearch.aspx.cs" Inherits="jobsearch_aspx" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

<div align=center>
    <asp:Label ID="Label14" Runat="server" Text="Search Jobs!!!" SkinID="FormHeading"></asp:Label>
    <br />
    <asp:Label ID="lblJobCount" Runat="server" SkinID="Slogan"></asp:Label><br /><br />
</div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<contenttemplate>
			<table style="width: 100%">
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label1" Runat="server" Text="Skills :" SkinID="FormLabel"></asp:Label>
					</td>
					<td align="left">
						<asp:TextBox ID="txtSkills" Runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" 
						ControlToValidate="txtSkills" Display="Dynamic" 
						ErrorMessage="Please enter skills to search for"> *</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label3" Runat="server" Text="Country :" SkinID="FormLabel"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlCountry" Runat="server" AutoPostBack="True" 
						OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label4" Runat="server" Text="State :" SkinID="FormLabel"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlState" Runat="server" AutoPostBack="True" 
                            onselectedindexchanged="ddlState_SelectedIndexChanged">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" valign="top">
						<asp:Label ID="Label2" Runat="server" Text="City :" SkinID="FormLabel"></asp:Label>
					</td>
					<td align="left">
						<asp:TextBox ID="txtCity" Runat="server" Enabled="False"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" valign="top">
						<asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Images/SearchButton.gif" onclick="ImageButton1_Click" />
                        &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" 
                            ImageUrl="~/Images/MyFavorite.gif" onclick="ImageButton3_Click" />
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
		<progresstemplate>
		    <center>
			<asp:Image ID="Image1" runat="server" ImageUrl="~/images/progress.gif" />
			</center>
		</progresstemplate>
	</asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
		<contenttemplate>
			<asp:GridView ID="GridView1" Runat="server" AllowPaging="True" 
			AutoGenerateColumns="False" DataKeyNames="PostingID" 
			OnPageIndexChanging="GridView1_PageIndexChanging" 
			OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" 
			PageSize="3" Width="100%">
				<columns>
					<asp:templatefield HeaderText="Date">
					
						<edititemtemplate>
							<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PostingDate") %>'>
							</asp:TextBox>
						</edititemtemplate>
					
						<itemtemplate>
							<asp:Label ID="Label1" runat="server" 
							Text='<%# Bind("PostingDate", "{0:MM/dd/yyyy}") %>'></asp:Label>
						</itemtemplate>
					
					</asp:templatefield>
					<asp:boundfield DataField="Title" HeaderText="Title" SortExpression="title">
					</asp:boundfield>
					<asp:boundfield DataField="City" HeaderText="Location" SortExpression="city">
					</asp:boundfield>
					<asp:boundfield DataField="companyname" HeaderText="Company" ShowHeader="False" 
					SortExpression="companyname">
					</asp:boundfield>
					<asp:buttonfield CommandName="viewdetails" ButtonType="Image" 
                        ImageUrl="~/Images/ShowDetails.gif">
						<itemstyle wrap="False" />
					</asp:buttonfield>
				</columns>
			</asp:GridView>
		</contenttemplate>
	</asp:UpdatePanel>
    <br />
    </asp:Content>
