<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StaffOptions.ascx.cs" Inherits="Demo.UserControls.StaffOptions" %>
<asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="None" 
    
    
    style="z-index: 1; left: 61px; top: 258px; position: absolute; height: 207px; width: 176px">
    <asp:Button ID="btnDocList" runat="server" 
    style="z-index: 1; left: 0px; top: 100px; position: absolute; width: 86px; height: 23px;" 
        Text="Doctor List" BorderStyle="None" Font-Bold="True" 
        onclick="btnDocList_Click" BackColor="White" ForeColor="#0099FF" />
    <asp:Button ID="btnPatientList" runat="server" BorderStyle="None" 
        Font-Bold="True" onclick="btnPatientList_Click" 
        style="z-index: 1; left: 2px; top: 132px; position: absolute; height: 24px; width: 84px;" 
        Text="Patient List" BackColor="White" ForeColor="#0099FF" />
    <asp:Button ID="btnPatientRegistration" runat="server" BorderStyle="None" 
        Font-Bold="True" onclick="btnPatientRegistration_Click" 
        style="z-index: 1; left: 2px; top: 162px; position: absolute; width: 144px; height: 25px" 
        Text="Patient Registration" BackColor="White" ForeColor="#0099FF" />
    <asp:Button ID="btnPatientVisits" runat="server" BorderStyle="None" 
        Font-Bold="True" onclick="btnPatientVisits_Click" 
        style="z-index: 1; left: 4px; top: 193px; position: absolute; width: 93px; height: 25px;" 
        Text="Patient Visits" BackColor="White" ForeColor="#0099FF" />
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/ArticleBarExaminations - Copy.jpg" 
        style="z-index: 1; left: 0px; top: 69px; position: absolute; height: 29px; width: 160px" />
</asp:Panel>
