<%@ Page Title="St. Vincent's Locations" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="Demo.Locations" %>
<%@ Register Src="~/UserControls/Navigations.ascx" TagPrefix="cc1" TagName="dd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 494px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 98px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 227px; top: 119px; position: absolute" 
        Text="Our Locations"></asp:Label>
</p>
    <p>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/locations1.jpg" 
        
            style="z-index: 1; left: 230px; top: 147px; position: absolute; width: 342px; height: 187px" />
    <asp:Label ID="lblLoc" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 233px; top: 343px; position: absolute" 
        Text="Excellence in healthcare and service delivery"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 234px; top: 375px; position: absolute" 
        Text="St. Vincent's Hospital Ltd  "></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 234px; top: 398px; position: absolute; width: 315px" 
        Text="Located in Fitzroy and providing a wide range of medical, surgical, allied health and mental health services, including community, outreach, drug and alcohol and correctional health services. "></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 229px; top: 474px; position: absolute; width: 303px" 
        Text="Registered Office: Ground Floor, 41 Victoria Parade, Fitzroy VIC 3065"></asp:Label>
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 579px; top: 380px; position: absolute; height: 23px;" 
        Text="Feature                  ."></asp:Label>
    <asp:Label ID="Label5" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 552px; top: 403px; position: absolute; width: 161px" 
        Text="Each day health care professionals and their support staff come to work not for themselves alone, but to go the extra mile for those who most need them – the sick, the poor and the marginalised. "></asp:Label>
    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
        style="z-index: 1; left: 552px; top: 380px; position: absolute; height: 23px; width: 27px" />
        <cc1:dd runat="server" />  
</asp:Content>
