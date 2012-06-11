<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="viewresume.aspx.cs" Inherits="viewresume_aspx" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
<div align="center">
        <asp:Label ID="Label14" Runat="server" Text="View Resume" SkinID="FormHeading"></asp:Label><br />
    &nbsp;</div>

    <table width="100%"><tr>
            <td>
                <asp:Label ID="lblName" Runat="server" SkinID="FormGroupLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEducation" Runat="server" SkinID="FormGroupLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblExperience" Runat="server" SkinID="FormGroupLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCoveringLetter" Runat="server" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblResume" Runat="server" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/BackButton.gif" onclick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/MyFavorite.gif" 
                    onclick="ImageButton2_Click" />
            </td>
        </tr></table>
</asp:Content>
