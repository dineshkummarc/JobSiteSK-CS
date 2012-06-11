<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AJAXNavigation.ascx.cs" Inherits="UserControls_AJAXNavigation" %>
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
        path=path.replace("customerrorpages","");
        path = path + "/";
        path=path.replace("//","/");

        $get("tab1").src=path + "images/memberstab.jpg";
        $get("tab2").src=path + "images/jobseekerstab.jpg";
        $get("tab3").src=path + "images/employerstab.jpg";
        
        var img1=new JSSK.HoverButton('img1','url1', path + 'images/login',path + 'login.aspx');
        var img2=new JSSK.HoverButton('img2','url2',path + 'images/register',path + 'register.aspx');
        var img3=new JSSK.HoverButton('img3','url3',path + 'images/changepassword',path + 'changepassword.aspx');
        var img4=new JSSK.HoverButton('img4','url4',path +'images/postresume',path + 'jobseeker/postresume.aspx');
        var img5=new JSSK.HoverButton('img5','url5',path +'images/searchjobs',path + 'jobseeker/jobsearch.aspx');
        var img6=new JSSK.HoverButton('img6','url6',path +'images/favorites',path + 'jobseeker/MyFavorites.aspx');
        var img7=new JSSK.HoverButton('img7','url7',path +'images/postjobs',path + 'employer/jobpostings.aspx');
        var img8=new JSSK.HoverButton('img8','url8',path +'images/searchresumes',path + 'employer/resumesearch.aspx');
        var img9=new JSSK.HoverButton('img9','url9',path +'images/companyprofile',path + 'employer/companyprofile.aspx');
        var img10=new JSSK.HoverButton('img10','url10',path +'images/favorites',path + 'employer/MyFavorites.aspx');
        
    }
</script>
<img id="tab1" src="images/MembersTab.jpg" />
<a id='url1'><img id='img1' /></a><br />
<a id='url2'><img id='img2' /></a><br />
<a id='url3'><img id='img3' /></a><br /><br />
<img id="tab2" src="images/JobSeekersTab.jpg" />
<a id='url4'><img id='img4' /></a><br />
<a id='url5'><img id='img5' /></a><br />
<a id='url6'><img id='img6' /></a><br /><br />
<img id="tab3" src="images/EmployersTab.jpg" />
<a id='url7'><img id='img7' /></a><br />
<a id='url8'><img id='img8' /></a><br />
<a id='url9'><img id='img9' /></a><br />
<a id='url10'><img id='img10' /></a><br /><br />

