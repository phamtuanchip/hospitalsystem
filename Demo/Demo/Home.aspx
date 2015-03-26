<%@ Page Title="Welcome to St. Vincent's" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Demo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 588px">
        <asp:Label ID="lblWelcomeNote" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#D0E0EF" 
            style="z-index: 1; left: 223px; top: 103px; position: absolute" 
            Text="Welcome to St. Vincent's"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<asp:Button ID="btnVisitors" runat="server" BorderStyle="None" 
        style="z-index: 1; left: 329px; top: 312px; position: absolute; width: 95px; height: 23px;" 
        Text="Visitors" onclick="btnVisitors_Click" />
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 224px; top: 149px; position: absolute; width: 439px" 
        
        
        Text="Every day at St. Vincent’s lives are saved, significantly improved and supported. Hearts are restarted, tumours are removed, organs are implanted and new drugs are trialled. In the less dramatic moments, broken limbs are wrapped and the homeless are offered a safe place to rest. We pride ourselves on innovation  in research and care, while never forgetting that our patients are people who need to be comforted and counselled as they face defining moments in their lives."></asp:Label>
    <asp:Button ID="btnPatients" runat="server" BorderStyle="None" 
        style="z-index: 1; left: 230px; top: 311px; position: absolute; width: 90px; height: 23px;" 
        Text="Patients" onclick="btnPatients_Click" />
    <asp:Image ID="imgPatient" runat="server" ImageUrl="~/Images/patients_nav2.jpg" 
        style="z-index: 1; left: 230px; top: 334px; position: absolute" />
    <asp:Image ID="imgVistors" runat="server" ImageUrl="~/Images/visitors_nav2.jpg" 
        
        style="z-index: 1; left: 329px; top: 334px; position: absolute; height: 136px; width: 94px" />
    <asp:Button ID="btnVolunteers" runat="server" BorderStyle="None" 
        style="z-index: 1; left: 432px; top: 312px; position: absolute; width: 91px; height: 23px;" 
        Text="Volunteers" onclick="btnVolunteers_Click" />
    <asp:Image ID="imgVolunteers" runat="server" 
        ImageUrl="~/Images/volunteers_nav2.jpg" 
        style="z-index: 1; left: 433px; top: 335px; position: absolute" />
    <asp:Button ID="btnHealthCare" runat="server" BorderStyle="None" 
        style="z-index: 1; left: 533px; top: 313px; position: absolute; width: 91px; height: 22px" 
        Text="HealthCare" onclick="btnHealthCare_Click" />
    <asp:Image ID="imgHealthCare" runat="server" ImageUrl="~/Images/GPs_nav2.jpg" 
        style="z-index: 1; left: 533px; top: 335px; position: absolute" />
    <asp:Label ID="lblLatestNews" runat="server" BorderStyle="None" 
        Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 228px; top: 492px; position: absolute" 
        Text="Latest News"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 370px; top: 520px; position: absolute; height: 117px; width: 295px; margin-bottom: 0px" 
        
        Text="In September 2008 Premier John Brumby declared St. Vincent's the winner of the Premier's Award for Metropolitan Health Service of the Year, commending our 'can do' approach to healthcare."></asp:Label>
    <asp:Image ID="Image2" runat="server" 
        ImageUrl="~/Images/Health-Awards-Final-Image-copy1.jpg" 
        
        style="z-index: 1; left: 227px; top: 520px; position: absolute; height: 118px; width: 133px" />
        <asp:LinkButton ID="lnkPrivacy" runat="server" onclick="lnkPrivacy_Click" 
            style="z-index: 1; left: 605px; top: 632px; position: absolute">Disclaimer/Privacy</asp:LinkButton>
        <asp:LinkButton ID="lnkSitemap" runat="server" onclick="lnkSitemap_Click" 
            style="z-index: 1; left: 524px; top: 631px; position: absolute">Site Map</asp:LinkButton>
</p>
</asp:Content>
