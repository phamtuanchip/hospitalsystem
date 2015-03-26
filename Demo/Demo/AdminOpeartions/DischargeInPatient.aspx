<%@ Page Title="St. Vincent's Discharge In Patient" Language="C#" Theme="Admin" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="DischargeInPatient.aspx.cs" Inherits="Demo.AdminOpeartions.DischargeInPatient" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register Src="~/UserControls/AdminOptionsControls.ascx" TagPrefix="adm1" TagName="adm2"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<lg1:lgo ID="lg2" runat="server" />

&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
    ForeColor="#5C7CAE" 
    style="z-index: 1; left: 256px; top: 119px; position: absolute; height: 30px; width: 206px" 
    Text="St. Vincent's In Patient's"></asp:Label>
    
    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red" style="z-index: 1; left: 260px; top: 260px; position: absolute" 
        Text="Label"></asp:Label>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>   

            <asp:Button ID="btnDischarge" runat="server" BackColor="White" 
                BorderStyle="None" Font-Bold="True" onclick="btnDischarge_Click" 
                style="z-index: 1; left: 575px; top: 386px; position: absolute; width: 132px;" 
                Text="Discharge Patient" />
            <asp:DropDownList ID="ddlInPatients" runat="server" 
                
                style="z-index: 1; left: 409px; top: 428px; position: absolute; width: 74px;" 
                AutoPostBack="True" onload="Page_Load" 
        onselectedindexchanged="ddlInPatients_SelectedIndexChanged">
            </asp:DropDownList>
            <cc1:DropDownExtender ID="ddlInPatients_DropDownExtender" 
        runat="server" DynamicServicePath="" Enabled="True" 
        TargetControlID="ddlInPatients">
    </cc1:DropDownExtender>
            <uc1:StaffOptions ID="StaffOptions1" runat="server" />
            <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
                
        
        
        style="z-index: 1; left: 373px; top: 448px; position: absolute; width: 155px;" />
            <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/header_search.png" 
                
        
        style="z-index: 1; left: 368px; top: 364px; position: absolute; width: 159px; height: 45px;" />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                style="z-index: 1; left: 375px; top: 410px; position: absolute" 
                Text="Patient Id"></asp:Label>
            <asp:GridView ID="grdIn" runat="server" AllowPaging="True" 
                Caption="In Patients" CellPadding="4" Font-Bold="True" ForeColor="#333333" 
                GridLines="None" PageSize="2" 
                style="z-index: 1; left: 258px; top: 184px; position: absolute; height: 123px; width: 483px">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
  
    
    <asp:DropDownList ID="ddlInternalData" runat="server" 
        style="z-index: 1; left: 10px; top: 200px; position: absolute">
    </asp:DropDownList>
  
    <adm1:adm2 ID="adm12" runat="server" /> 
    <asp:Panel ID="pnlInvoice" runat="server" 
        style="z-index: 1; left: 255px; top: 146px; position: absolute; height: 198px; width: 498px">
        <asp:Label ID="Label3" runat="server" 
    style="z-index: 1; left: 198px; top: 7px; position: absolute" Text="Statement" 
            Font-Bold="True" Font-Size="Large" ForeColor="#382D7C"></asp:Label>
        <asp:Label ID="Label4" runat="server" BorderColor="Blue" Font-Bold="True" 
            ForeColor="#372C91" 
            style="z-index: 1; left: 13px; top: 30px; position: absolute" 
            Text="Total Charges"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#382D7C" 
            style="z-index: 1; left: 190px; top: 33px; position: absolute" 
            Text="Patient Name"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#382DA9" 
            style="z-index: 1; left: 381px; top: 32px; position: absolute" 
            Text="Patient ID"></asp:Label>
        <asp:TextBox ID="txtCharges" runat="server" BorderStyle="Groove" 
            Enabled="False" style="z-index: 1; left: 2px; top: 49px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtPatientID" runat="server" BorderStyle="Groove" 
            Enabled="False" style="z-index: 1; left: 362px; top: 51px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtPatientName" runat="server" BorderStyle="Groove" 
            Enabled="False" 
            style="z-index: 1; left: 165px; top: 50px; position: absolute; width: 143px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
            ForeColor="#382DA9" 
            style="z-index: 1; left: 6px; top: 96px; position: absolute" Text="Date"></asp:Label>
        <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/linesHo.jpg" 
            style="z-index: 1; left: 0px; top: 27px; position: absolute; height: 1px; width: 518px" />
        <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/linesHo.jpg" 
            style="z-index: 1; left: 0px; top: 80px; position: absolute; height: 1px; width: 518px" />
        <asp:Image ID="Image14" runat="server" ImageUrl="~/Images/linesHo.jpg" 
            style="z-index: 1; left: 0px; top: 27px; position: absolute; height: 1px; width: 518px" />
        <asp:Image ID="Image15" runat="server" ImageUrl="~/Images/lines.jpg" 
            style="z-index: 1; left: 155px; top: 24px; position: absolute; height: 57px; width: 1px" />
        <asp:Image ID="Image16" runat="server" ImageUrl="~/Images/lines.jpg" 
            style="z-index: 1; left: 332px; top: 24px; position: absolute; height: 57px; width: 1px" />
        <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/lines.jpg" 
            style="z-index: 1; left: 107px; top: 81px; position: absolute; height: 116px; width: 1px" />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#382DA9" 
            style="z-index: 1; left: 187px; top: 93px; position: absolute" 
            Text="Description"></asp:Label>
        <asp:Image ID="Image18" runat="server" ImageUrl="~/Images/lines.jpg" 
            style="z-index: 1; left: 355px; top: 81px; position: absolute; height: 116px; width: 2px" />
        <asp:TextBox ID="txtDate" runat="server" Enabled="False" 
            style="z-index: 1; left: -1px; top: 114px; position: absolute; height: 23px; width: 99px"></asp:TextBox>
        <asp:TextBox ID="txtAmount" runat="server" Enabled="False" 
            style="z-index: 1; left: 366px; top: 113px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtDescription" runat="server" Enabled="False" 
            style="z-index: 1; left: 112px; top: 112px; position: absolute; height: 82px; width: 228px"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#3856D5" 
            style="z-index: 1; left: 407px; top: 95px; position: absolute" Text="Amount"></asp:Label>
    </asp:Panel>
    <asp:Button ID="btnInvoice" runat="server" BackColor="White" BorderStyle="None" 
        Font-Bold="True" onclick="btnInvoice_Click" 
        style="z-index: 1; left: 577px; top: 421px; position: absolute" 
        Text="Show In Patients" />
</asp:Content>
