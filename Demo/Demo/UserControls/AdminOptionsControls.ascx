<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminOptionsControls.ascx.cs" Inherits="Demo.UserControls.AdminOptions" %>
<asp:Button ID="btnDischargePatient" runat="server" BackColor="White" 
    BorderStyle="None" Font-Bold="True" 
    style="z-index: 1; left: 58px; top: 614px; position: absolute; width: 148px" 
    Text="Discharge In Patient" onclick="btnDischargePatient_Click" />
<asp:Button ID="btnDoctoePerformance" runat="server" BackColor="White" 
    BorderStyle="None" Font-Bold="True" onclick="btnDoctoePerformance_Click" 
    style="z-index: 1; left: 58px; top: 643px; position: absolute; width: 108px" 
    Text="Top 5 Doctors" />
<asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Images/ArticleBarExaminations.jpg" 
    
    style="z-index: 1; left: 58px; top: 490px; position: absolute; height: 33px; width: 163px; bottom: 142px;" />
<asp:Button ID="btnList" runat="server" BackColor="White" BorderStyle="None" 
    Font-Bold="True" onclick="btnList_Click" 
    style="z-index: 1; left: 60px; top: 526px; position: absolute; width: 68px" 
    Text="Bed List" />
<asp:Button ID="btnInfo" runat="server" BackColor="White" BorderStyle="None" 
    Font-Bold="True" onclick="btnInfo_Click" 
    style="z-index: 1; left: 59px; top: 583px; position: absolute; width: 137px" 
    Text="Doctor Patient Info" />
<asp:Button ID="btnEdit" runat="server" BackColor="White" BorderStyle="None" 
    Font-Bold="True" onclick="btnEdit_Click" 
    style="z-index: 1; left: 62px; top: 554px; position: absolute; width: 82px" 
    Text="Edit Doctor" />
