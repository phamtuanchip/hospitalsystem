<%@ Page Title="St. Vincent's Visitors" Theme="Normal User" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Visitors.aspx.cs" Inherits="Demo.Visitors" %>
<%@ Register Src="~/UserControls/Navigations.ascx" TagPrefix="cc1" TagName="dd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 98px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 232px; top: 295px; position: absolute" 
        Text="Care and Support"></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/visitors3.jpg" 
        
        
        
        
    style="z-index: 1; left: 230px; top: 134px; position: absolute; width: 343px; height: 161px" />
        <asp:Label ID="lblMiisionValues" runat="server" Font-Bold="True" 
            Font-Size="Large" ForeColor="#71B3D0" 
            style="z-index: 1; left: 231px; top: 112px; position: absolute" 
            Text="Visitors to St. Vincent's"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 237px; top: 323px; position: absolute" 
        Text="Our Visiting Hours"></asp:Label>
    <asp:Label ID="lblFeatureSummary0" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 587px; top: 362px; position: absolute; width: 139px" 
        
            
        Text="0430521580"></asp:Label>
    <asp:Label ID="lblFeatureSummary" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 587px; top: 343px; position: absolute; width: 139px" 
        
            
        Text="Patient Enquiry Desk"></asp:Label>
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 614px; top: 321px; position: absolute; width: 60px; height: 22px;" 
        Text="Feature                  ."></asp:Label>
    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
        
        
        style="z-index: 1; left: 587px; top: 320px; position: absolute; height: 23px; width: 27px" />
        <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 237px; top: 346px; position: absolute; height: 103px; width: 331px" 
        
        Text="The Visiting hours are from 7:00 AM to 9:00 PM including public holidays, although patients may be away from the ward at various times throughout the day. APPOINTMENT NECESSARY."></asp:Label>
        <cc1:dd ID="Dd1" runat="server" /> 
</asp:Content>
