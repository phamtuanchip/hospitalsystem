<%@ Page Title="St. Vincent's Patients" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Demo.Patients" %>
<%@ Register Src="~/UserControls/Navigations.ascx" TagPrefix="cc1" TagName="dd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="z-index: 1; left: 60px; top: 89px; position: absolute">
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/patients3.jpg" 
        
        
    style="z-index: 1; left: 230px; top: 124px; position: absolute; width: 348px; height: 161px" />
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 232px; top: 292px; position: absolute" 
        Text="In the best of Care" BackColor="Silver"></asp:Label>
    <asp:Label ID="lblFeatureSummary" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 587px; top: 343px; position: absolute; width: 139px" 
        
            
        Text="St. Vincent's provides a free, confidential interpreting service. Please ask your doctor or nurse to organise one for you."></asp:Label>
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 614px; top: 321px; position: absolute; width: 60px; height: 22px;" 
        Text="Feature                  ."></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 233px; top: 317px; position: absolute; width: 341px" 
        Text="St. Vincent's treat people in our hospitals, clinics, their communities and at home. We are constantly seeking new ways to offer care, while acknowledging changing community needs. We achieve this by offering patients continuous care from hospital to home. "></asp:Label>
    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
        
        
    style="z-index: 1; left: 587px; top: 321px; position: absolute; height: 23px; width: 27px" />
        <asp:Label ID="lblMiisionValues" runat="server" Font-Bold="True" 
            Font-Size="Large" ForeColor="#71B3D0" 
            style="z-index: 1; left: 231px; top: 102px; position: absolute" 
            Text="Our Patients"></asp:Label>
            <cc1:dd runat="server" />  
    </asp:Content>
