<%@ Page Title="St. Vincent's Bed List" Language="C#" Theme="Admin" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="BedList.aspx.cs" Inherits="Demo.AdminOpeartions.BedList" %>
<%@ Register Src="~/UserControls/AdminOptionsControls.ascx" TagPrefix="adm1" TagName="adm2"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<lg1:lgo ID="lg2" runat="server" />

    <asp:GridView ID="grdBedList" runat="server" AllowPaging="True" 
        Caption="Available Bed List" CellPadding="4" Font-Bold="True" 
        ForeColor="#333333" GridLines="None" PageSize="2" 
        
        style="z-index: 1; left: 226px; top: 360px; position: absolute; height: 133px; width: 669px" 
        AutoGenerateEditButton="True" 
        onpageindexchanging="grdBedList_PageIndexChanging" 
        onrowcancelingedit="grdBedList_RowCancelingEdit" 
        onrowediting="grdBedList_RowEditing" 
        onrowupdating="grdBedList_RowUpdating">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
&nbsp;
    
    <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red" style="z-index: 1; left: 228px; top: 159px; position: absolute"></asp:Label>
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#5A7EAE" 
        style="z-index: 1; left: 234px; top: 125px; position: absolute; height: 22px;" 
        Text="St. Vincent's Bed List"></asp:Label>
        
        
        
        
    <asp:GridView ID="grdInsert" runat="server" AutoGenerateColumns="False"  
         ShowFooter="True" AllowPaging="True" 
        PageSize="2" 
        style="z-index: 1; left: 226px; top: 156px; position: absolute; height: 72px; width: 460px" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Caption="Add Bed" 
        Font-Bold="True" onpageindexchanging="grdInsert_PageIndexChanging" 
        onrowcommand="grdInsert_RowCommand" 
        onselectedindexchanged="grdInsert_SelectedIndexChanged" >
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>

            <asp:TemplateField HeaderText="Id"> 
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtNewId" ErrorMessage="Enter Valid Id" 
                        style="z-index: 1; left: 240px; top: 240px; position: absolute" 
                        ValidationExpression="^B[0-9]*">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewId" runat="server"></asp:TextBox> 
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                        runat="server" ControlToValidate="txtNewName" ErrorMessage="Enter Valid Name" 
                        style="z-index: 1; left: 400px; top: 240px; position: absolute" 
                        ValidationExpression="^[a-zA-Z'.\s]*$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rate Per Day">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="txtNewRate" ErrorMessage="Enter Valid Rate" Font-Bold="True" 
                        style="z-index: 1; left: 543px; top: 240px; position: absolute"
                        ValidationExpression="^[0-9]*" >
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewRate" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="BedType" SortExpression="BedType">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtNewBedType" ErrorMessage="Enter Valid Bed Type" 
                        style="z-index: 1; left: 701px; top: 240px; position: absolute" 
                        ValidationExpression="^[a-zA-Z'.\s]*$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewBedType" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Add" ShowHeader="False">
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="AddNew" Text="Add New"></asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    
    <adm1:adm2 ID="adm12" runat="server" /> 
    <uc1:StaffOptions ID="StaffOptions1" runat="server" />
</asp:Content>
