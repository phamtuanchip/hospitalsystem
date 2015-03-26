<%@ Page Title="St. Vincent's Site Map" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="WebPaths.aspx.cs" Inherits="Demo.Presentation.Hello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
&nbsp;<asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
            
        
        style="z-index: 1; left: 250px; top: 281px; position: absolute; height: 139px; width: 99px" 
        Font-Size="Medium">
        </asp:TreeView>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#0066FF" 
        style="z-index: 1; left: 249px; top: 130px; position: absolute" Text="Site Map"></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Sitemap.jpg" 
        style="z-index: 1; left: 249px; top: 152px; position: absolute; height: 129px; width: 501px" />
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </asp:Content>
