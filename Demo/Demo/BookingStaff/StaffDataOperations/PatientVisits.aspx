<%@ Page Title="St. Vincent's Patient Visits" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="PatientVisits.aspx.cs" Inherits="Demo.PatientRegisteration" %>
<%@ Register Src="~/UserControls/StaffOptions.ascx" TagPrefix="so1" TagName="sto"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="../../UserControls/AdminOptionsControls.ascx" tagname="AdminOptionsControls" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <lg1:lgo ID="lg2" runat="server" />

    <asp:DropDownList ID="ddlDateVisit" runat="server" AutoPostBack="True" 
        onselectedindexchanged="ddlDateVisit_SelectedIndexChanged" 
        
        style="z-index: 1; left: 456px; top: 566px; position: absolute; height: 49px; width: 135px">
    </asp:DropDownList>
    &nbsp;<asp:Label ID="lblMessage" runat="server" Font-Bold="True" 
        Font-Size="Large" ForeColor="Red" 
        style="z-index: 1; left: 238px; top: 384px; position: absolute"></asp:Label>
    <asp:DropDownList ID="ddlDischargeDate" runat="server" 
        AutoPostBack="True" 
        onselectedindexchanged="ddlDischargeDate_SelectedIndexChanged" 
        
        style="z-index: 1; left: 641px; top: 565px; position: absolute; height: 17px; width: 151px">
    </asp:DropDownList>
    <asp:Label ID="lblRegisterations" runat="server" Font-Bold="True" 
    Font-Size="Large" ForeColor="#BECBD7" 
    style="z-index: 1; left: 212px; top: 118px; position: absolute" 
    Text="St. Vincent's Patient Visits"></asp:Label>
    <asp:Label ID="lblByName" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 260px; top: 546px; position: absolute" 
        Text="By Name"></asp:Label>
    <asp:Label ID="lblDateOfVisit" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 449px; top: 546px; position: absolute; width: 136px;" 
        Text="By Date Of Visit"></asp:Label>
    <asp:Label ID="lblDateOfDischarge" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 636px; top: 548px; position: absolute" 
        Text="By Date Of Discharge"></asp:Label>
    <asp:Image ID="Image15" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
        style="z-index: 1; left: 629px; top: 588px; position: absolute; width: 174px; height: 39px" />
    <asp:Image ID="Image16" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
        style="z-index: 1; left: 443px; top: 589px; position: absolute; width: 174px; height: 39px" />
    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
        style="z-index: 1; left: 251px; top: 589px; position: absolute; width: 174px; height: 39px" />
    <asp:DropDownList ID="ddlCategoryName" runat="server" 
        
        style="z-index: 1; left: 291px; top: 566px; position: absolute; height: 22px; width: 94px" 
        AppendDataBoundItems="True" AutoPostBack="True" 
        onselectedindexchanged="ddlCategoryName_SelectedIndexChanged">
    </asp:DropDownList>
    <uc1:AdminOptionsControls ID="AdminOptionsControls1" runat="server" 
        Visible="False" />
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/patients3.jpg" 
        
        
        
        style="z-index: 1; left: 233px; top: 147px; position: absolute; height: 160px; width: 569px" />
    <asp:Image ID="Image14" runat="server" ImageUrl="~/Images/header_search.png" 
        style="z-index: 1; left: 628px; top: 501px; position: absolute; height: 47px; width: 172px" />
    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/header_search.png" 
        style="z-index: 1; left: 441px; top: 501px; position: absolute; height: 47px; width: 172px" />
    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/header_search.png" 
        style="z-index: 1; left: 252px; top: 500px; position: absolute; height: 47px; width: 172px" />
    <asp:GridView ID="grdPatientVists" runat="server" AllowPaging="True" 
        Caption="Patient Visits" CellPadding="4" Font-Bold="True" ForeColor="#333333" 
        GridLines="None" PageSize="2" 
        
        
        
        style="z-index: 1; left: 235px; top: 323px; position: absolute; height: 133px; width: 568px" 
        onpageindexchanging="grdEditDoctor_PageIndexChanging">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    
   
    <so1:sto ID="sto1" runat="server" />
</asp:Content>
