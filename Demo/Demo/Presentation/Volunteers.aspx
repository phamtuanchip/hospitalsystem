<%@ Page Title="St. Vincent's Volunteer's" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Volunteers.aspx.cs" Inherits="Demo.Volunteers" %>
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
    <asp:Label ID="lblFeatureSummary" runat="server" BackColor="Silver" 
        style="z-index: 1; left: 587px; top: 345px; position: absolute; width: 145px" 
        
            
        Text="If you would like more detailed information on becoming a volunteer, please contact:  Coordinator of Volunteers   at 0430521580"></asp:Label>
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 614px; top: 323px; position: absolute; width: 60px; height: 22px;" 
        Text="Feature                  ."></asp:Label>
    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
        
        
        
        style="z-index: 1; left: 588px; top: 322px; position: absolute; height: 23px; width: 27px" />
        <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 234px; top: 340px; position: absolute; height: 142px; width: 331px" 
        
        
        Text="&quot;We make a living by what we get, but we make a life with what we give.&quot; Volunteers generously donate their time and play a vital role at                St. Vincent's.  Volunteering is rewarding and offers a caring, supportive environment, meeting new people and most importantly, contributing to your community and helping others."></asp:Label>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        style="z-index: 1; left: 232px; top: 313px; position: absolute" 
        Text="Supporting Patients"></asp:Label>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/volunteers3.jpg" 
        
        
        
        
        style="z-index: 1; left: 230px; top: 144px; position: absolute; width: 350px; height: 164px" />
        <asp:Label ID="lblMiisionValues" runat="server" Font-Bold="True" 
            Font-Size="Large" ForeColor="#71B3D0" 
            style="z-index: 1; left: 231px; top: 117px; position: absolute" 
            Text="Our Volunteers"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 235px; top: 491px; position: absolute; width: 333px" 
        Text="Providing companionship to patients who may be lonely or anxious "></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 235px; top: 538px; position: absolute; width: 332px" 
        Text="Helping patients and visitors to find where they are going by staffing the information desks"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 235px; top: 594px; position: absolute; height: 19px; width: 123px" 
        Text="And much more..."></asp:Label>
        <cc1:dd runat="server" /> 
</asp:Content>
