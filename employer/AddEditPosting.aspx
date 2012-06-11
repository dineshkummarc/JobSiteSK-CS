<%@ Page Language="C#" CodeFile="AddEditPosting.aspx.cs" Inherits="AddEditPosting_aspx" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <div style="text-align: center">
        <div align="center">
            <asp:Label ID="Label14" Runat="server" Text="Add / Edit Job Posting" SkinID="FormHeading"></asp:Label>
        </div>
        <br />
        <asp:HyperLink ID="HyperLink2" Runat="server" 
            NavigateUrl="~/employer/jobpostings.aspx" ImageUrl="~/Images/JobPostings.gif"></asp:HyperLink><br />
        <asp:Label ID="Label6" runat="server" Text="(All the fields are mandatory)"></asp:Label>
        <br />
        <br />
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<contenttemplate>
				<asp:DetailsView ID="DetailsView1" Runat="server" AutoGenerateRows="False" 
				CellPadding="5" DataKeyNames="JobPostingID" DataSourceID="ObjectDataSource1" 
				GridLines="None" HorizontalAlign="Center" 
				OnDataBound="DetailsView1_DataBound" OnItemDeleted="DetailsView1_ItemDeleted" 
				OnItemInserting="DetailsView1_ItemInserting" 
				OnItemUpdating="DetailsView1_ItemUpdating" Width="100%">
					<rowstyle horizontalalign="Left" />
					<fieldheaderstyle horizontalalign="Right" Wrap="false" />
					<fields>
						<asp:boundfield DataField="JobPostingID" HeaderText="Job Posting ID :" 
						InsertVisible="False" ReadOnly="True" SortExpression="JobPostingID"><headerstyle 
						cssclass="dataentryformlabel" wrap="False" /><itemstyle cssclass="dataentryformlabel" wrap="False" /></asp:boundfield>
						<asp:boundfield DataField="Title" HeaderText="Title :" SortExpression="Title"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:templatefield HeaderText="Contact Person :" SortExpression="ContactPerson"><edititemtemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ContactPerson") %>'> </asp:TextBox></edititemtemplate><insertitemtemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ContactPerson") %>'> </asp:TextBox></insertitemtemplate><itemtemplate><asp:Label ID="Label6" Runat="server" 
								Text='<%# Bind("ContactPerson") %>'></asp:Label></itemtemplate><headerstyle 
						cssclass="dataentryformlabel" wrap="False" /><itemstyle wrap="False" /></asp:templatefield>
						<asp:boundfield DataField="Department" HeaderText="Department :" 
						SortExpression="Department"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:boundfield DataField="JobCode" HeaderText="Job Code :" 
						SortExpression="JobCode"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:templatefield HeaderText="Country :" SortExpression="CountryID"><edititemtemplate>&nbsp;<asp:DropDownList ID="ddlCountryUpdate" Runat="server" 
								AutoPostBack="True" DataSourceID="ObjectDataSource3" 
								DataTextField="CountryName" DataValueField="CountryID" 
								OnSelectedIndexChanged="ddlCountryUpdate_SelectedIndexChanged" 
								SelectedValue='<%# Bind("CountryID") %>'></asp:DropDownList></edititemtemplate><insertitemtemplate>&nbsp;<asp:DropDownList ID="ddlCountryInsert" Runat="server" 
								AutoPostBack="True" DataSourceID="ObjectDataSource3" 
								DataTextField="CountryName" DataValueField="CountryID" 
								OnSelectedIndexChanged="ddlCountryInsert_SelectedIndexChanged" 
								SelectedValue='<%# Bind("CountryID") %>'></asp:DropDownList></insertitemtemplate><itemtemplate><asp:Label ID="Label2" Runat="server" 
								Text='<%# JobSiteStarterKit.BOL.Country.GetCountryName((int)Eval("CountryID")) %>'> </asp:Label></itemtemplate><headerstyle cssclass="dataentryformlabel" /></asp:templatefield>
						<asp:templatefield HeaderText="State :" SortExpression="StateID"><edititemtemplate><asp:DropDownList ID="ddlStateUpdate" Runat="server" 
								DataSourceID="ObjectDataSource2" DataTextField="StateName" 
								DataValueField="StateID"></asp:DropDownList></edititemtemplate><insertitemtemplate><asp:DropDownList ID="ddlStateInsert" Runat="server" 
								DataSourceID="ObjectDataSource2" DataTextField="StateName" 
								DataValueField="StateID"></asp:DropDownList></insertitemtemplate><itemtemplate><asp:Label ID="Label1" Runat="server" 
								Text='<%# JobSiteStarterKit.BOL.State.GetStateName((int)Eval("StateID")) %>'> </asp:Label></itemtemplate><headerstyle cssclass="dataentryformlabel" /></asp:templatefield>
						<asp:boundfield DataField="City" HeaderText="City :" SortExpression="City"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:templatefield HeaderText="Education Level :" 
						SortExpression="EducationLevelID"><edititemtemplate>&nbsp;<asp:DropDownList ID="ddlEduLevelUpdate" Runat="server" 
								DataSourceID="ObjectDataSource4" DataTextField="EducationLevelName" 
								DataValueField="EducationLevelID" 
								SelectedValue='<%# Bind("EducationLevelID") %>'></asp:DropDownList></edititemtemplate><insertitemtemplate>&nbsp;<asp:DropDownList ID="ddlEduLevelInsert" Runat="server" 
								DataSourceID="ObjectDataSource4" DataTextField="EducationLevelName" 
								DataValueField="EducationLevelID" 
								SelectedValue='<%# Bind("EducationLevelID") %>'></asp:DropDownList></insertitemtemplate><itemtemplate><asp:Label ID="Label3" Runat="server" 
								Text='<%# JobSiteStarterKit.BOL.EducationLevel.GetEducationLevelName((int)Eval("EducationLevelID")) %>'> </asp:Label></itemtemplate><headerstyle 
						cssclass="dataentryformlabel" wrap="False" /><itemstyle wrap="False" /></asp:templatefield>
						<asp:templatefield HeaderText="Job Type :" SortExpression="JobTypeID"><edititemtemplate>&nbsp;<asp:DropDownList ID="ddlJobTypeUpdate" Runat="server" 
								DataSourceID="ObjectDataSource5" DataTextField="JobTypeName" 
								DataValueField="JobTypeID" SelectedValue='<%# Bind("JobTypeID") %>'></asp:DropDownList></edititemtemplate><insertitemtemplate>&nbsp;<asp:DropDownList ID="ddlJobTypeInsert" Runat="server" 
								DataSourceID="ObjectDataSource5" DataTextField="JobTypeName" 
								DataValueField="JobTypeID" SelectedValue='<%# Bind("JobTypeID") %>'></asp:DropDownList></insertitemtemplate><itemtemplate><asp:Label ID="Label4" Runat="server" 
								Text='<%# JobSiteStarterKit.BOL.JobType.GetJobTypeName((int)Eval("JobTypeID")) %>'> </asp:Label></itemtemplate><headerstyle cssclass="dataentryformlabel" /></asp:templatefield>
						<asp:boundfield DataField="MinSalary" HeaderText="Min Salary :" 
						SortExpression="MinSalary"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:boundfield DataField="MaxSalary" HeaderText="Max Salary :" 
						SortExpression="MaxSalary"><headerstyle cssclass="dataentryformlabel" /></asp:boundfield>
						<asp:templatefield HeaderText="Description :" SortExpression="Description"><edititemtemplate><asp:TextBox ID="TextBox1" Runat="server" Rows="5" 
								Text='<%# Bind("Description") %>' TextMode="MultiLine" Width="98%"> </asp:TextBox></edititemtemplate><insertitemtemplate><asp:TextBox ID="TextBox1" Runat="server" Rows="5" 
								Text='<%# Bind("Description") %>' TextMode="MultiLine"> </asp:TextBox></insertitemtemplate><itemtemplate>
                                <asp:Label ID="Label5" Runat="server" 
                                    Text='<%# (Server.HtmlEncode(Eval("Description").ToString())).Replace("\r\n","<br>") %>'></asp:Label></itemtemplate><headerstyle cssclass="dataentryformlabel" verticalalign="Top" /></asp:templatefield>
						<asp:commandfield ButtonType="Image" ShowDeleteButton="True" 
						ShowEditButton="True" ShowInsertButton="True" CancelImageUrl="~/Images/CancelButton.gif" 
                            DeleteImageUrl="~/Images/DeleteButton.gif" 
                            EditImageUrl="~/Images/EditButton.gif" InsertImageUrl="~/Images/SaveButton.gif" 
                            NewImageUrl="~/Images/AddButton.gif" UpdateImageUrl="~/Images/SaveButton.gif"><controlstyle 
						cssclass="dataentryformbutton" /><footerstyle horizontalalign="Center" />
                        <itemstyle horizontalalign="Center" />
                        </asp:commandfield>
					</fields>
					<headerstyle horizontalalign="Right" />
					<insertrowstyle horizontalalign="Left" />
					<editrowstyle horizontalalign="Left" />
				</asp:DetailsView>
			</contenttemplate>
		</asp:UpdatePanel>
		<asp:UpdateProgress ID="UpdateProgress1" runat="server" 
            AssociatedUpdatePanelID="UpdatePanel1">
			<progresstemplate>
				<asp:Image ID="Image1" runat="server" ImageUrl="~/images/progress.gif" />
			</progresstemplate>
		</asp:UpdateProgress>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" Runat="server" NavigateUrl="~/employer/jobpostings.aspx">Go to Listing Page</asp:HyperLink>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="JobSiteStarterKit.BOL.JobPosting"
            DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetPosting" UpdateMethod="Update"
            DataObjectTypeName="JobSiteStarterKit.BOL.JobPosting">
            <DeleteParameters>
                <asp:Parameter Name="original_JobPostingID" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:ObjectDataSource><br />
        <asp:ObjectDataSource ID="ObjectDataSource2" Runat="server" TypeName="JobSiteStarterKit.BOL.State"
            SelectMethod="GetStates">
            <SelectParameters>
                <asp:Parameter Type="Int32" Name="countryid"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" Runat="server" TypeName="JobSiteStarterKit.BOL.Country"
            SelectMethod="SelectCountries">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" Runat="server" SelectMethod="GetEducationLevels" TypeName="JobSiteStarterKit.BOL.EducationLevel">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource5" Runat="server" SelectMethod="GetJobTypes" TypeName="JobSiteStarterKit.BOL.JobType">
        </asp:ObjectDataSource>
    
    </div>
</asp:Content>


