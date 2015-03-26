<%@ Page Title="St. Vincent's Top 5 Doctor's" Language="C#" Theme="Admin" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Top5DoctorList.aspx.cs" Inherits="Demo.AdminOpeartions.Reports.Top5DoctorList" %>
<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>
<%@ Register src="../../UserControls/AdminOptionsControls.ascx" tagname="AdminOptionsControls" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <lg1:lgo ID="lg2" runat="server" />

    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="DoctorPerformance.rpt">
        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" 
        style="z-index: 1; left: 200px; top: 150px; position: absolute" 
        ReportSourceID="CrystalReportSource1" />
&nbsp;
    <uc2:AdminOptionsControls ID="AdminOptionsControls1" runat="server" />
    <uc1:StaffOptions ID="StaffOptions1" runat="server" />
</asp:Content>
