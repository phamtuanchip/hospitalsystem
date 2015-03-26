<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ScreenNavigations.ascx.cs" Inherits="Demo.UserControls.ScreenNavigations" %>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p style="margin-left: 200px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnPatientVisits" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" 
        Font-Size="Medium" ForeColor="#0099CC" 
        style="z-index: 1; left: 513px; top: 318px; position: absolute; width: 117px; right: 234px" 
        Text="Patient Visits" onclick="btnPatientVisits_Click" />
    <asp:Button ID="btnPatientList" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" 
        Font-Size="Medium" ForeColor="#0099CC" onclick="btnPatientList_Click" 
        style="z-index: 1; left: 228px; top: 318px; position: absolute; height: 25px; right: 504px" 
        Text="Patient List" />
    &nbsp;<asp:Button ID="btnPRegistration" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" 
        Font-Size="Medium" ForeColor="#0099CC" onclick="btnPRegistration_Click" 
        style="z-index: 1; left: 338px; top: 318px; position: absolute; width: 174px" 
        Text="Patient Registration" />
    <asp:Button ID="btnDoctorList" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" 
        Font-Size="Medium" ForeColor="#0099CC" 
        style="z-index: 1; left: 634px; top: 317px; position: absolute; width: 98px" 
        Text="Doctor List" onclick="btnDoctorList_Click" />
</p>
<p>
    &nbsp;</p>
