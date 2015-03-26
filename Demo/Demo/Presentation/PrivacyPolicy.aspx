<%@ Page Title="St. Vincent's Privacy Page" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="PrivacyPolicy.aspx.cs" Inherits="Demo.PrivacyPolicy" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
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
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 240px; top: 119px; position: absolute" 
        Text="Website Privacy Policy"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 241px; top: 161px; position: absolute; width: 422px" 
        Text="This privacy policy applies to the collections, uses and disclosures of personal information by St. Vincent's and its Website. St. Vincent's respects the privacy of visitors to the website. Any and all personal information collected at this site is kept strictly confidential and is only used for the purposes specified at the time of collection to which you consent; for such other purposes to which you may consent from time to time (the &quot;Purposes&quot;); and as required or permitted by applicable law. Personal information will not be sold, reused, rented, loaned, or otherwise disclosed, other than to third party service providers engaged to help us carry out the Purposes which are bound by agreement to protect your personal information; as required or permitted by law"></asp:Label>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 242px; top: 484px; position: absolute" 
        Text="How to Contact Us: "></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 241px; top: 401px; position: absolute" 
        Text="Personal Information"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 242px; top: 422px; position: absolute; width: 419px" 
        Text="Personal information is any information that is identifiable with you. This information may include but is not limited to your name, personal mailing address, personal phone numbers."></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 242px; top: 510px; position: absolute; width: 417px" 
        Text="All comments, questions, concerns or requests, including access requests, regarding your personal information or our privacy policy and practices, should be forwarded to our privacy officer as follows:"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 241px; top: 571px; position: absolute" 
        Text="St. Vincent's Hospital, Phone: 0430521580"></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/img_privacy.jpg" 
        
        
        
        style="z-index: 1; left: 509px; top: 92px; position: absolute; height: 75px; width: 227px" />
    
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    
    <cc1:TabContainer ID="TabContainer1" runat="server" 
        style="z-index: 1; left: 245px; top: 238px; position: absolute" Font-Size="Medium" EnableTheming="true" Width="590px">
        <cc1:TabPanel ID="GeneralInformation" runat="server">
            <HeaderTemplate>
General Information
</HeaderTemplate>
            


<ContentTemplate> 
 
 
 
 
 
 
 This privacy policy applies to the collections, uses and disclosures of personal information by St. Vincent's and its Website. St. Vincent's respects the privacy of visitors to the website. Any and all personal information collected at this site is kept strictly confidential and is only used for the purposes specified at the time of collection to which you consent; for such other purposes to which you may consent from time to time (the "Purposes"); and as required or permitted by applicable law. Personal information will not be sold, reused, rented, loaned, or otherwise disclosed, other than to third party service providers engaged to help us carry out the Purposes which are bound by agreement to protect your personal information; as required or permitted by law
</ContentTemplate>
        


</cc1:TabPanel>
        <cc1:TabPanel ID="Personal" runat="server">
            <HeaderTemplate>
Personal Information
</HeaderTemplate>
            


<ContentTemplate>
Personal information is any information that is identifiable with you. This information may include but is not limited to your name, personal mailing address, personal phone numbers.
</ContentTemplate>
        


</cc1:TabPanel>
        <cc1:TabPanel ID="ContactUs" runat="server">
            <HeaderTemplate>
How to Contact Us?
</HeaderTemplate>
            


<ContentTemplate>
All comments, questions, concerns or requests, including access requests, regarding your personal information or our privacy policy and practices, should be forwarded to our privacy officer as follows:
St. Vincent's Hospital, Phone: 0430521580
</ContentTemplate>
        


</cc1:TabPanel>
        
        
    </cc1:TabContainer>
</asp:Content>
