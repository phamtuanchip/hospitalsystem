<%@ Page Title="St. Vincent's Login" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Demo.PatientRegistration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register src="UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 98px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    <asp:Label ID="lblUserName" runat="server" Font-Bold="True" 
    style="z-index: 1; left: 294px; top: 182px; position: absolute; height: 19px; width: 89px" 
    Text="User Name *"></asp:Label>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="lblLogins" runat="server" BorderStyle="None" 
    Font-Bold="True" Font-Size="Large" ForeColor="#BECBD7" 
    style="z-index: 1; left: 244px; top: 119px; position: absolute" 
    Text="Logins"></asp:Label>
<asp:Label ID="lblPassword" runat="server" BorderStyle="None" Font-Bold="True" 
    style="z-index: 1; left: 297px; top: 224px; position: absolute" 
        Text="Password *"></asp:Label>
<asp:TextBox ID="txtUserName" runat="server" 
    style="z-index: 1; left: 391px; top: 181px; position: absolute" TabIndex="1"></asp:TextBox>
    
    <cc1:TextBoxWatermarkExtender ID="txtUserName_TextBoxWatermarkExtender" 
        runat="server" Enabled="True" TargetControlID="txtUserName" WatermarkText="Enter User Name">
    </cc1:TextBoxWatermarkExtender>
    
    <cc1:FilteredTextBoxExtender ID="txtUserName_FilteredTextBoxExtender" 
        runat="server" Enabled="True" TargetControlID="txtUserName" FilterType="LowercaseLetters,UppercaseLetters" ValidChars="^[a-zA-Z]*$">
    </cc1:FilteredTextBoxExtender>
    
<asp:TextBox ID="txtPassword" runat="server" 
    style="z-index: 1; left: 391px; top: 223px; position: absolute" 
        TextMode="Password" TabIndex="2"></asp:TextBox>
    <asp:RegularExpressionValidator ID="regexUserName" runat="server" 
        ControlToValidate="txtUserName" ErrorMessage="Enter Valid Name" 
        style="z-index: 1; left: 553px; top: 181px; position: absolute" 
        ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
    <cc1:ValidatorCalloutExtender ID="regexUserName_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="regexUserName">
    </cc1:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtPassword" ErrorMessage="Please Enter the Password" 
        style="z-index: 1; left: 553px; top: 224px; position: absolute"></asp:RequiredFieldValidator>
    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
    </cc1:ValidatorCalloutExtender>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/LoginIcon.gif" 
        
        
    style="z-index: 1; left: 236px; top: 149px; position: absolute; height: 89px; width: 50px" />
    <asp:Label ID="lblLoginError" runat="server" 
        style="z-index: 1; left: 240px; top: 264px; position: absolute" 
        ForeColor="Red"></asp:Label>
    <asp:Button ID="btnLoginUser" runat="server" Font-Bold="True" 
        ForeColor="Black" onclick="btnLoginUser_Click" 
        
        
        
        
        style="z-index: 1; left: 388px; top: 261px; position: absolute; height: 26px;" TabIndex="3" 
        Text="Login" BackColor="White" />
    <asp:Button ID="btnAdminLogin" runat="server" Font-Bold="True" 
        onclick="btnLoginUser_Click" 
        style="z-index: 1; left: 492px; top: 260px; position: absolute; height: 29px" 
        Text="Admin Login" Visible="False" />
</asp:Content>
