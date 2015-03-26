<%@ Page Title="Contact St. Vincent's" Language="C#" Theme="Normal User" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Demo.Contact" %>
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
    <asp:Label ID="lblContact" runat="server" Font-Bold="True" Font-Size="X-Large" 
        ForeColor="#BECBD7" 
        style="z-index: 1; left: 233px; top: 119px; position: absolute" 
    Text="Contact Us"></asp:Label>
    <p>
        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/contact3.jpg" 
            
            style="z-index: 1; left: 230px; top: 147px; position: absolute; width: 352px; height: 186px" />
    <asp:Label ID="Label1" runat="server" BackColor="Silver" Font-Bold="True" 
        Font-Size="Large" 
        style="z-index: 1; left: 234px; top: 345px; position: absolute" 
        Text="Part of St. Vincent's community"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 237px; top: 376px; position: absolute" 
            Text="Ground Floor, 41 Victoria Parade, Fitzroy VIC 3065"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 237px; top: 399px; position: absolute" 
            Text="Patient enquiries 0430521580"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 238px; top: 423px; position: absolute" 
            Text="Emergency Care Center 0430521580"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 237px; top: 447px; position: absolute" 
            Text="Out Patient Appointment 0430521580"></asp:Label>
        <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/titleicon_default.jpg" 
            style="z-index: 1; left: 571px; top: 371px; position: absolute; height: 23px; width: 27px" />
    <asp:Label ID="lblFeature" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
        style="z-index: 1; left: 598px; top: 371px; position: absolute; height: 23px;" 
        Text="Feature                  ."></asp:Label>
        <asp:Label ID="Label6" runat="server" BackColor="Silver" 
            style="z-index: 1; left: 572px; top: 394px; position: absolute; width: 147px" 
            Text="St. Vincent's will continue in our quest to improve the services offered to the community."></asp:Label>
        <asp:Image ID="Image7" runat="server" 
            ImageUrl="~/Images/home_header_EmergDept1.jpg" 
            style="z-index: 1; left: 222px; top: 517px; position: absolute; width: 501px" />
            <cc1:dd ID="Dd1" runat="server" />  

</asp:Content>
