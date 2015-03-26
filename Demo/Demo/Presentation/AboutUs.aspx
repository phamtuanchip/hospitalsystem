<%@ Page Title="About St. Vincent's" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Demo.AboutUs" %>
<%@ Register Src="~/UserControls/Navigations.ascx" TagPrefix="cc1" TagName="dd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 504px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 98px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    &nbsp;&nbsp;<asp:Image ID="Image5" runat="server" ImageUrl="~/Images/about3.jpg" 
        
            
            style="z-index: 1; left: 233px; top: 148px; position: absolute; width: 352px; height: 186px;" />
    <asp:Label ID="lblabout" runat="server" Font-Bold="True" Font-Size="X-Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 233px; top: 119px; position: absolute" Text="About Us"></asp:Label>
    <asp:Label ID="Label1" runat="server" BackColor="Silver" Font-Bold="True" 
        Font-Size="Large" 
        style="z-index: 1; left: 234px; top: 345px; position: absolute" 
        Text="St. Vincent's serves a diverse Community"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 237px; top: 371px; position: absolute; width: 433px" 
        Text="St. Vincent’s is a leading teaching, research and tertiary health service providing integrated care across 17 sites throughout Melbourne. Part of the Sisters of Charity Health Service, St. Vincent’s comprises with many other hospitals accross world."></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 237px; top: 459px; position: absolute; width: 431px" 
        Text="For last few decades St. Vincent’s has been providing the highest standards of care driven by our concern for others, especially those in need. This focus makes us to focus on our goals  to serve the Community"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 237px; top: 551px; position: absolute; width: 483px" 
        Text="St. Vincent’s is capable of serving 900 patient beds, operating revenue of more than $289million and employs over 4,500 staff. St. Vincent’s provides a diverse range of adult clinical services including acute medical and surgical services, sub-acute care, medical diagnostics, rehabilitation, mental health, correctional health and residential care. "></asp:Label>
        <cc1:dd runat="server" />   
        <p>
        
</p>
</asp:Content>
