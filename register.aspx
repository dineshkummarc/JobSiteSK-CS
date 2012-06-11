<%@ Page Language="C#" CodeFile="register.aspx.cs" Inherits="register_aspx" EnableTheming="true" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

<div align=center>
    <asp:Label ID="Label2" Runat="server" Text="Employees/ Employers! Register here!!"
        SkinID="FormHeading"></asp:Label>
</div>        
    <br />
    Registration is a two step process:<br />
    <ol>
        <li>Choose a user name and password</li><li>Choose whether you would like to register as an "Employee" or "Employer".</li></ol>

<p>
    Once you register with us you can access respective secured areas for posting resumes
    or posting jobs.</p>

    <div align=center>
    	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<contenttemplate>
				<asp:CreateUserWizard ID="CreateUserWizard1" Runat="server" 
				CreateUserButtonText="Register Me" 
				OnActiveStepChanged="CreateUserWizard1_ActiveStepChanged" 
				OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" 
				OnNextButtonClick="CreateUserWizard1_NextButtonClick">
					<wizardsteps>
						<asp:WizardStep ID="WizardStep2" Runat="server" 
						Title="Please tell us about yourself">
							<table style="width: 100%">
								<tr>
									<td align="right" contenteditable="true">
										<asp:Label ID="Label3" Runat="server" SkinID="FormLabel" Text="First Name :"></asp:Label>
									</td>
									<td align="left">
										<asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" 
										ControlToValidate="TextBox1" Display="Dynamic" 
										ErrorMessage="Please enter first name">
										</asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="right" contenteditable="true">
										<asp:Label ID="Label4" Runat="server" SkinID="FormLabel" Text="Last Name :"></asp:Label>
									</td>
									<td align="left">
										<asp:TextBox ID="TextBox2" Runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Runat="server" 
										ControlToValidate="TextBox2" Display="Dynamic" 
										ErrorMessage="Please enter last name">
										</asp:RequiredFieldValidator>
									</td>
								</tr>
							</table>
						</asp:WizardStep>
						<asp:CreateUserWizardStep ID="CreateUserWizardStep1" Runat="server" 
						Title="Sign Up for Your New Account">
						</asp:CreateUserWizardStep>
						<asp:WizardStep ID="WizardStep1" Runat="server" StepType="Step" 
						Title="Choose your role">
							<table width="100%">
								<tr>
									<td style="width: 100px">
										<asp:Label ID="Label1" Runat="server" Text="Register As :"></asp:Label>
									</td>
								</tr>
								<tr>
									<td style="width: 100px">
										<asp:DropDownList ID="DropDownList1" Runat="server" Height="22px" Width="135px">
										</asp:DropDownList>
									</td>
								</tr>
							</table>
						</asp:WizardStep>
						<asp:CompleteWizardStep ID="CompleteWizardStep1" Runat="server" 
						Title="Complete">
						</asp:CompleteWizardStep>
					</wizardsteps>
					<startnavigationtemplate>
						<asp:Button ID="StartNextButton" Runat="server" CommandName="MoveNext" 
						Text="Next" />
					</startnavigationtemplate>
				</asp:CreateUserWizard>
			</contenttemplate>
		</asp:UpdatePanel>
		<asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="100">
			<progresstemplate>
				<br />
				<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Progress.gif" />
			</progresstemplate>
		</asp:UpdateProgress>
    </div>
    </asp:Content>

