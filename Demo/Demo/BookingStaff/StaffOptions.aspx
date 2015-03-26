<%@ Page Title="St. Vincent's Staff/Admin Options" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="StaffOptions.aspx.cs" Inherits="Demo.StaffOptions" %>
<%@ Register Src="~/UserControls/ScreenNavigations.ascx" TagPrefix="sn1" TagName="uscn"%>

<%@ Register src="../UserControls/AdminOptionsControls.ascx" tagname="AdminOptionsControls" tagprefix="uc1" %>

<%@ Register src="../UserControls/Admin.ascx" tagname="Admin" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/gps3.jpg" 
        
        
    style="z-index: 1; left: 247px; top: 135px; position: absolute; width: 475px; height: 172px" />
        
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 90px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    <asp:LinkButton ID="btnLogout" runat="server" BackColor="White" 
        BorderStyle="None" Font-Bold="True" ForeColor="#1892BB" 
        onclick="btnLogout_Click" 
        
        
        style="z-index: 1; left: 809px; top: 104px; position: absolute; height: 19px">Logout</asp:LinkButton>
        
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 256px; top: 110px; position: absolute" 
        Text="St. Vincent's Staff/ Admin Option's" ForeColor="#BECBD7"></asp:Label>
        
  
        
    <uc2:Admin ID="Admin1" runat="server" Visible="False" />
        
  
        
<sn1:uscn ID="uscn1" runat="server" /> 

</asp:Content>
