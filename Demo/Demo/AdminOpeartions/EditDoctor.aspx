<%@ Page Title="St. Vincent's Doctor" Language="C#" MasterPageFile="~/Demo.Master" Theme="Admin" AutoEventWireup="true" CodeBehind="EditDoctor.aspx.cs" Inherits="Demo.Admin_Opeartions.EditDoctor" %>
<%@ Register Src="~/UserControls/AdminOptionsControls.ascx" TagPrefix="adm1" TagName="adm2"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register src="../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<lg1:lgo ID="lg2" runat="server" />
    

    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 243px; top: 133px; position: absolute"></asp:Label>
    &nbsp;<uc1:StaffOptions ID="StaffOptions1" runat="server" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#5A7EAC" 
        style="z-index: 1; left: 238px; top: 101px; position: absolute" 
        Text="St. Vincent's Doctors"></asp:Label>
    <asp:GridView ID="grdInsert" runat="server" AutoGenerateColumns="False"  
         ShowFooter="True" AllowPaging="True" 
        PageSize="2" 
        style="z-index: 1; left: 238px; top: 132px; position: absolute; height: 152px; width: 646px" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Caption="Add Doctor" 
        Font-Bold="True" onpageindexchanging="grdInsert_PageIndexChanging" 
        onrowcommand="grdInsert_RowCommand" 
        onselectedindexchanged="grdInsert_SelectedIndexChanged" >
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>

            <asp:TemplateField HeaderText="Id"> 
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtNewId" ErrorMessage="Enter Valid Id" 
                        style="z-index: 1; left: 203px; top: 194px; position: absolute" 
                        ValidationExpression="^[0-9]*">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewId" runat="server"></asp:TextBox> 
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                        runat="server" ControlToValidate="txtNewName" ErrorMessage="Enter Valid Name" 
                        style="z-index: 1; left: 370px; top: 194px; position: absolute" 
                        ValidationExpression="^[a-zA-Z'.\s]*$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Address">
                <FooterTemplate>
                    <asp:TextBox ID="txtNewAddress" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtNewPhone" ErrorMessage="Enter Valid Phone Number" 
                        style="z-index: 1; left: 678px; top: 194px; position: absolute" 
                        ValidationExpression="^[^0-9]*([0-9][^0-9]*){8,10}$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewPhone" runat="server" ></asp:TextBox>
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
    
    
    
    
    
&nbsp;
    <asp:GridView ID="grdEditDoctor" runat="server" AllowPaging="True" 
        AutoGenerateEditButton="True" Caption="Doctor List" CellPadding="4" Font-Bold="True" 
        ForeColor="#333333" GridLines="None" PageSize="2" ShowFooter="True" 
        
        style="z-index: 1; left: 240px; top: 332px; position: absolute; height: 133px; width: 665px" 
        onrowcancelingedit="grdEditDoctor_RowCancelingEdit" 
        onrowediting="grdEditDoctor_RowEditing" 
        onrowupdating="grdEditDoctor_RowUpdating" 
        onpageindexchanging="grdEditDoctor_PageIndexChanging" 
        onselectedindexchanged="grdEditDoctor_SelectedIndexChanged">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        
        
        
    </asp:GridView>
&nbsp;
    <adm1:adm2 ID="adm12" runat="server" /> 
</asp:Content>
