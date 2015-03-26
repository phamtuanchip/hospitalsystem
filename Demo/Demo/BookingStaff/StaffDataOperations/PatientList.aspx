<%@ Page Title="St. Vincent's Patient's List" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="Demo.StaffDataOperations.PatientList" %>
<%@ Register Src="~/UserControls/StaffOptions.ascx" TagPrefix="so1" TagName="sto"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <lg1:lgo ID="lg2" runat="server" />

    <asp:Label ID="lblByName" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 294px; top: 459px; position: absolute" 
        Text="By Name"></asp:Label>
    <asp:GridView ID="grdPatientList" runat="server" AllowPaging="True" 
        Caption="Patient List (In and Out)" CellPadding="4" Font-Bold="True" 
        ForeColor="#333333" GridLines="None" PageSize="2" 
        
        
        
        
    
        style="z-index: 1; left: 231px; top: 135px; position: absolute; height: 237px; width: 531px">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:DropDownList ID="ddlName" runat="server" 
        onselectedindexchanged="ddlName_SelectedIndexChanged" 
        
        style="z-index: 1; left: 321px; top: 489px; position: absolute; height: 17px; width: 121px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <cc1:ListSearchExtender ID="ddlName_ListSearchExtender" runat="server" 
    Enabled="True" TargetControlID="ddlName">
</cc1:ListSearchExtender>
    <cc1:DropDownExtender ID="ddlName_DropDownExtender" runat="server" 
        DynamicServicePath="" Enabled="True" TargetControlID="ddlName">
    </cc1:DropDownExtender>
    <asp:DropDownList ID="ddlDischarge" runat="server" 
        onselectedindexchanged="ddlDischarge_SelectedIndexChanged" 
        
        style="z-index: 1; left: 528px; top: 491px; position: absolute; height: 19px; width: 140px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <cc1:ListSearchExtender ID="ddlDischarge_ListSearchExtender" runat="server" 
    Enabled="True" TargetControlID="ddlDischarge">
</cc1:ListSearchExtender>
    <cc1:DropDownExtender ID="ddlDischarge_DropDownExtender" runat="server" 
        DynamicServicePath="" Enabled="True" TargetControlID="ddlDischarge">
    </cc1:DropDownExtender>
    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/header_search.png" 
        
        
    style="z-index: 1; left: 510px; top: 412px; position: absolute; height: 47px; width: 172px" />
    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/header_search.png" 
        
        
    style="z-index: 1; left: 290px; top: 413px; position: absolute; height: 47px; width: 172px" />
    <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
        
        
    style="z-index: 1; left: 507px; top: 512px; position: absolute; width: 174px; height: 39px" />
    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
        
        
    style="z-index: 1; left: 289px; top: 511px; position: absolute; width: 174px; height: 39px" />
    <asp:Label ID="lblDateOfRegistration" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 514px; top: 462px; position: absolute" 
        Text="By Date Of Registration"></asp:Label>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#5D7EAF" 
        style="z-index: 1; left: 225px; top: 106px; position: absolute" 
        Text="St. Vincent's Patients List"></asp:Label>
    <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red" style="z-index: 1; left: 241px; top: 254px; position: absolute"></asp:Label>
&nbsp;<so1:sto ID="sto1" runat="server" />
</asp:Content>
