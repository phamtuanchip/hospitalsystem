<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin.ascx.cs" Inherits="Demo.UserControls.Admin" %>
<asp:Button ID="btnEditDoctor" runat="server" BorderStyle="None" 
    Font-Bold="True" onclick="btnEditDoctor_Click" 
    style="z-index: 1; left: 353px; top: 356px; position: absolute; right: 537px; height: 22px; width: 80px;" 
    Text="Edit Doctor" BackColor="White" ForeColor="#0099CC" 
    Font-Names="Times New Roman" Font-Size="Medium" />
<asp:Button ID="btnBedList" runat="server" BorderStyle="None" Font-Bold="True" 
    onclick="btnBedList_Click" 
    style="z-index: 1; left: 445px; top: 356px; position: absolute; height: 23px; width: 66px;" 
    Text="Bed List" BackColor="White" ForeColor="#0099CC" 
    Font-Names="Times New Roman" Font-Size="Medium" />
<asp:Button ID="btnDischargePatient" runat="server" BorderStyle="None" 
    Font-Bold="True" onclick="btnDischargePatient_Click" 
    style="z-index: 1; left: 523px; top: 356px; position: absolute; width: 141px; height: 24px" 
    Text="Discharge In Patient" BackColor="White" ForeColor="#0099CC" 
    Font-Names="Times New Roman" Font-Size="Medium" />
<asp:Button ID="btnDoctorPatientInfo" runat="server" BorderStyle="None" 
    Font-Bold="True" onclick="btnDoctorPatientInfo_Click" 
    style="z-index: 1; left: 210px; top: 358px; position: absolute; width: 132px" 
    Text="Doctor Patient Info" BackColor="White" BorderColor="White" 
    ForeColor="#0099CC" Font-Names="Times New Roman" Font-Size="Medium" />
<p>
    <asp:Button ID="btnDoctorPerformance" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" ForeColor="#0099DD" 
        onclick="btnDoctorPerformance_Click" 
        style="z-index: 1; left: 671px; top: 359px; position: absolute; width: 106px; height: 25px;" 
        Text="Top 5 Doctors" Font-Names="Times New Roman" Font-Size="Medium" />
</p>

