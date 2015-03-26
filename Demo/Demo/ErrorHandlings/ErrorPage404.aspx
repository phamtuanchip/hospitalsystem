<%@ Page Title="St. Vincent's Error Page 404" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="ErrorPage404.aspx.cs" Inherits="Demo.Error_Handlings.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
    ForeColor="#5B79A6" 
    style="z-index: 1; left: 229px; top: 128px; position: absolute" 
    Text="St. Vincent's Error Page"></asp:Label>
<asp:Label ID="Label3" runat="server" Font-Bold="True" 
    style="z-index: 1; left: 221px; top: 536px; position: absolute" 
    Text="The Page you are Looking can not be Found!" ForeColor="Red"></asp:Label>
    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/book.png" 
        style="z-index: 1; left: 214px; top: 164px; position: absolute; height: 333px; width: 579px" />
&nbsp;
</asp:Content>
