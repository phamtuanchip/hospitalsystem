<%@ Page Title="Missions and Values" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Mission.aspx.cs" Inherits="Demo.Mission" %>
<%@ Register Src="~/UserControls/Navigations.ascx" TagPrefix="cc1" TagName="dd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 485px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 98px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 529px; top: 322px; position: absolute; width: 60px; height: 21px;" 
        Text="Feature                  ."></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/mission3.jpg" 
        
            
            style="z-index: 1; left: 226px; top: 178px; position: absolute; width: 353px; height: 132px" />
    <asp:Label ID="lblMission" runat="server" 
        style="z-index: 1; left: 227px; top: 318px; position: absolute; width: 267px; height: 157px" 
        
            
        Text="Our mission is to bring the concern for others, especially those in need, permeates every aspect of the life and work of our services. We are dedicated to providing the best possible health care, drawing on the talents and creativity of our people and others who share our vision."></asp:Label>
    <asp:Label ID="lblFeatureSummary" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 502px; top: 343px; position: absolute; width: 183px" 
        
            
        Text="St. Vincent’s is committed to our diverse community. Our focus on hope, guided by our mission and values, ensures that our community experiences excellence in health care and service delivery.  "></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 226px; top: 528px; position: absolute" 
            Text="2020 Vision"></asp:Label>
        <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
            style="z-index: 1; left: 226px; top: 488px; position: absolute" />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 226px; top: 547px; position: absolute; width: 444px" 
            Text="A regional diversified health system providing superior care and service to patients and their families through a full continuum of integrated services, education and research."></asp:Label>
        <asp:Label ID="lblMiisionValues" runat="server" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="#71B3D0" 
            style="z-index: 1; left: 228px; top: 128px; position: absolute" 
            Text="Our Mission and Values"></asp:Label>
    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
        
        style="z-index: 1; left: 502px; top: 321px; position: absolute; height: 23px; width: 27px" />
        <cc1:dd ID="Dd1" runat="server" />  
</asp:Content>
