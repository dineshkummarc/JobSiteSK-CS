<%@ Page Language="C#" CodeFile="changepassword.aspx.cs" Inherits="changeregistrationinfo_aspx" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <div align=center>
    <asp:Label ID="Label1" Runat="server" Text="Change your password!" SkinID="FormHeading"></asp:Label>
    <br /><br />
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<contenttemplate>
				<asp:ChangePassword ID="ChangePassword1" Runat="server" 
				ContinueDestinationPageUrl="~/default.aspx" 
				OnContinueClick="ChangePassword1_ContinueClick">
				</asp:ChangePassword>
			</contenttemplate>
		</asp:UpdatePanel>
        <asp:updateprogress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <asp:Label runat="server" Text="Please Wait..." >
            </asp:Label>
            </ProgressTemplate>
        </asp:updateprogress>

</div>
</asp:Content>

