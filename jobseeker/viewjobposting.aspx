<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="viewjobposting.aspx.cs" Inherits="viewjobposting_aspx" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <div style="text-align: center">
        <div align="center">
            <asp:Label ID="Label14" Runat="server" Text="View Job Posting" SkinID="FormHeading"></asp:Label>
        </div>
        <br />
        <table style="width: 100%" cellpadding="3"><tr>
                <td align="left" width="20%" colspan="2" class="dataentryformlabelbig">
                    <asp:Label ID="Label16" Runat="server" Text="Contact Details" SkinID="FormGroupLabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label1" Runat="server" Text="Company :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblCompany" Runat="server" Text="Label"></asp:Label>
                    <asp:LinkButton ID="btnViewProfile" runat="server">[View Profile]</asp:LinkButton></td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label2" Runat="server" Text="Contact Person :" 
					SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblContactPerson" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" width="20%" colspan="2" class="dataentryformlabelbig">
                    <asp:Label ID="Label17" Runat="server" Text="Job Details" SkinID="FormGroupLabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label3" Runat="server" Text="Job Title :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblTitle" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap valign="top">
                    <asp:Label ID="Label13" Runat="server" Text="Description :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblDesc" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label9" Runat="server" Text="Job Type :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblJobType" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label4" Runat="server" Text="Department :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblDept" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label5" Runat="server" Text="Job Code :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblJobCode" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label10" Runat="server" Text="Education Level :" 
					SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblEduLevel" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" width="20%" colspan="2" class="dataentryformlabelbig">
                    <asp:Label ID="Label18" Runat="server" Text="Location" SkinID="FormGroupLabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label6" Runat="server" Text="City :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblCity" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label7" Runat="server" Text="State :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblState" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label8" Runat="server" Text="Country :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblCountry" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" width="20%" colspan="2" class="dataentryformlabelbig">
                    <asp:Label ID="Label19" Runat="server" Text="Salary Details" SkinID="FormGroupLabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label11" Runat="server" Text="Min. Salary :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblMinSal" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label12" Runat="server" Text="Max. Salary :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblMaxSal" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" width="20%">
                </td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="right" width="20%" nowrap>
                    <asp:Label ID="Label15" Runat="server" Text="Posting Date :" SkinID="FormLabel"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblPostDt" Runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" width="20%" nowrap colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Images/BackButton.gif" onclick="ImageButton1_Click" />
            		&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                        ImageUrl="~/Images/MyFavorite.gif" onclick="ImageButton2_Click" />
                </td>
            </tr></table>
        <br />
			<br />
			<br />
			<div align="left">
			<asp:Panel ID="Panel1" runat="server" SkinID="CompanyProfilePanel">
                <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
				<br />
				<div align="right" width="100%">
				<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True">Close</asp:LinkButton>
				</div>
			</asp:Panel>
			</div>
			<br />
			<cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
			TargetControlID="btnViewProfile" 
			PopupControlID="Panel1" 
			DynamicControlID="Label20" 
			DynamicServicePath='<%# Page.ResolveClientUrl("~/WebService.asmx") %>' 
			DynamicServiceMethod="GetCompanyProfile"
			OkControlID="LinkButton1"
			>
			</cc1:ModalPopupExtender>
			<br /><br />
   
    </div>


</asp:Content>
