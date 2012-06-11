<%@ Page Language="C#" CodeFile="postresume.aspx.cs" Inherits="postresume_aspx" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

<div align=center>
<asp:Label ID="Label14" Runat="server" Text="Post Your Resume" SkinID="FormHeading"></asp:Label>
</div>
	<br />

	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<contenttemplate>
			<table width="100%" cellpadding="3">
				<tr>
					<td align="left" colspan="2" class="dataentryformlabelbig">
						<asp:Label ID="Label15" Runat="server" SkinID="FormGroupLabel" 
						Text="Job Details"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label1" Runat="server" Text="Job Title :"></asp:Label>
					</td>
					<td align="left">
						<asp:TextBox ID="txtJobTitle" Runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" 
						ControlToValidate="txtJobTitle" Display="Dynamic" 
						ErrorMessage="Please enter job title"> *</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label6" Runat="server" Text="Desired Job Type :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlJobType" Runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="2" class="dataentryformlabelbig">
						<asp:Label ID="Label16" Runat="server" SkinID="FormGroupLabel" Text="Location"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label2" Runat="server" Text="Target City :"></asp:Label>
					</td>
					<td align="left">
						<asp:TextBox ID="txtCity" Runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label3" Runat="server" Text="Target Country :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlCountry" Runat="server" AutoPostBack="True" 
						OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label4" Runat="server" Text="Target State :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlState" Runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label5" Runat="server" Text="Acceptable Relocation :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlRelocationCountry" Runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="2" class="dataentryformlabelbig">
						<asp:Label ID="Label17" Runat="server" SkinID="FormGroupLabel" 
						Text="Education and Experience"></asp:Label>
						&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label7" Runat="server" Text="Education Level :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlEduLevel" Runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap width="10%">
						<asp:Label ID="Label8" Runat="server" Text="Experience Level :"></asp:Label>
					</td>
					<td align="left">
						<asp:DropDownList ID="ddlExpLevel" Runat="server">
						</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="2" class="dataentryformlabelbig">
						<asp:Label ID="Label9" Runat="server" SkinID="FormGroupLabel" Text="Resume :"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="2" valign="top">
						&nbsp;<asp:TextBox ID="txtResume" Runat="server" Rows="15" TextMode="MultiLine" 
						Width="98%"></asp:TextBox>
						<br />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Runat="server" 
						ControlToValidate="txtResume" Display="Dynamic" 
						ErrorMessage="Please enter resume"> *</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="2" valign="top" class="dataentryformlabelbig">
						<asp:Label ID="Label10" Runat="server" SkinID="FormGroupLabel" 
						Text="Covering Letter Template :"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="2" valign="top">
						&nbsp;<asp:TextBox ID="txtCoveringLetter" Runat="server" Rows="15" 
						TextMode="MultiLine" Width="98%"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" width="10%">
						<asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Images/SaveButton.gif" onclick="ImageButton1_Click" />
						&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/Images/CancelButton.gif" onclick="ImageButton2_Click" />
&nbsp; </td>
				</tr>
				<tr>
					<td align="center" colspan="2" width="10%">
						<asp:Label ID="lblMsg" runat="server" SkinID="FormLabel"></asp:Label>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" width="10%">
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

<br />

    &nbsp;<br />
    &nbsp;</asp:Content>

