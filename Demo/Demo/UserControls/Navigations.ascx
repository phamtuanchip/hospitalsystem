<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigations.ascx.cs" Inherits="Demo.Navigations" %>

<p>
        <asp:Label ID="lblquick0" runat="server" Font-Bold="True" Font-Size="Large" 
            style="z-index: 1; left: 594px; top: 149px; position: absolute; bottom: 244px" 
            Text="Quick Links"></asp:Label>
        </p>
<p>
    <asp:Button ID="btnPatients" runat="server" BackColor="#F0F0F0" 
        BorderStyle="None" 
        style="z-index: 1; left: 598px; top: 175px; position: absolute; width: 95px; height: 22px;" 
        Text="Patients" onclick="btnPatients_Click1" />
</p>
<asp:Button ID="btnVolunteers" runat="server" BackColor="#F0F0F0" 
    BorderStyle="None" onclick="btnVolunteers_Click1" 
    style="z-index: 1; left: 598px; top: 223px; position: absolute; width: 95px; bottom: 188px; height: 24px" 
    Text="Volunteers" />
<p>
<asp:Button ID="btnVisitors" runat="server" BackColor="#F0F0F0" 
    BorderStyle="None" 
    style="z-index: 1; left: 598px; top: 198px; position: absolute; width: 95px; height: 24px" 
    Text="Visitors" onclick="btnVisitors_Click1" />
    <asp:Button ID="btnHealthCare" runat="server" BackColor="#F0F0F0" 
        BorderStyle="None" onclick="btnHealthCare_Click1" 
        style="z-index: 1; left: 598px; top: 248px; position: absolute; width: 95px; height: 25px" 
        Text="Health Care" />
</p> 

