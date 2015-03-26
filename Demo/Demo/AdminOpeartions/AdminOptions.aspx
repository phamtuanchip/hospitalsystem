<%@ Page Title="St. Vincent's Admin Options" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="AdminOptions.aspx.cs" Inherits="Demo.AdminOpeartions.AdminOptions" %>
<%@ Register Src="~/UserControls/Admin.ascx" TagPrefix="ad1" TagName="adm"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<lg1:lgo ID="lg2" runat="server" />

    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/gps3.jpg" 
        style="z-index: 1; left: 243px; top: 163px; position: absolute; width: 507px; height: 180px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#5E7CAB" 
        style="z-index: 1; left: 244px; top: 133px; position: absolute" 
        Text="St. Vincent's Admin Options"></asp:Label>
&nbsp;
    <uc1:StaffOptions ID="StaffOptions1" runat="server" />
<ad1:adm ID="adm1" runat="server" /> 
</asp:Content>
