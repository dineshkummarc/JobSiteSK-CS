<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AJAXNavigationAdmin.ascx.cs" Inherits="UserControls_AJAXNavigationAdmin" %>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <scripts>
        <asp:scriptreference Path="~/Scripts/HoverButton.js" />
    </scripts>
</asp:ScriptManagerProxy>
<script type="text/javascript">
    function pageLoad()
    {
        var path=window.location.pathname;
        path=path.substring(0,path.lastIndexOf("/"));
        path=path.replace("jobseeker","");
        path=path.replace("employer","");
        path=path.replace("admin","");
        path=path.replace("CustomErrorPages");
        path = path + "/";
        path=path.replace("//","/");
        
        $get("tab4").src=path + "images/administrationtab.jpg";
       
        var img11=new JSSK.HoverButton('img11','url11',path +'images/edulevel',path + 'admin/educationlevelsmanager.aspx');
        var img12=new JSSK.HoverButton('img12','url12',path +'images/explevel',path + 'admin/ExperienceLevelManager.aspx');
    }
</script>
<img id="tab4" src="images/AdministrationTab.jpg" />
<a id='url11'><img id='img11' /></a><br />
<a id='url12'><img id='img12' /></a><br />
