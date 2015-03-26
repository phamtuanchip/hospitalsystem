<%@ Page Title="St. Vincent's Doctors" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="DoctorList.aspx.cs" Inherits="Demo.DataOperations.DoctorLits" %>
<%@ Register Src="~/UserControls/StaffOptions.ascx" TagPrefix="so1" TagName="sto"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../../UserControls/AdminOptionsControls.ascx" tagname="AdminOptionsControls" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <lg1:lgo ID="lg2" runat="server" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Assignment2ConnectionString6 %>" 
    SelectCommand="Doctors_List" SelectCommandType="StoredProcedure">
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" 
    
        style="z-index: 1; left: 225px; top: 325px; position: absolute; height: 183px; width: 516px" 
        AllowPaging="True" BorderStyle="Groove" Caption="Doctor List" 
        CaptionAlign="Top" Font-Bold="True" PageSize="2" DataKeyNames="Id" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
            ReadOnly="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
    </Columns>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>
&nbsp;<uc1:AdminOptionsControls ID="AdminOptionsControls1" runat="server" 
        Visible="False" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
    ForeColor="#BECBD7" 
    style="z-index: 1; left: 223px; top: 110px; position: absolute" 
    Text="Doctor's List"></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/doctors-logo1.jpg" 
        
        style="z-index: 1; left: 223px; top: 135px; position: absolute; height: 169px; width: 516px" />
        
        <so1:sto ID="sto1" runat="server" />
</asp:Content>
