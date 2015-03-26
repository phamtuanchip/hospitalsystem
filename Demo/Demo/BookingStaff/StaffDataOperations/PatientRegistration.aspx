<%@ Page Title="St. Vincent's Patient Registration" Language="C#" Theme="StaffTheme" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="Demo.StaffDataOperations.PatientRegistration" %>
<%@ Register Src="~/UserControls/StaffOptions.ascx" TagPrefix="so1" TagName="sto"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="../../UserControls/AdminOptionsControls.ascx" tagname="AdminOptionsControls" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<lg1:lgo ID="lg2" runat="server" />
    <asp:GridView ID="grdInsert" runat="server" AutoGenerateColumns="False"  
         ShowFooter="True" AllowPaging="True" 
        PageSize="2" 
        style="z-index: 1; left: 220px; top: 125px; position: absolute; height: 148px; width: 716px" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Caption="Add Patient" 
        Font-Bold="True" onpageindexchanging="grdInsert_PageIndexChanging" 
        onrowcommand="grdInsert_RowCommand" 
        onselectedindexchanged="grdInsert_SelectedIndexChanged" >
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>

            <asp:TemplateField HeaderText="Id"> 
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtNewId" ErrorMessage="Enter Valid Id" Font-Bold="True" 
                        style="z-index: 1; left: 225px; top: 209px; position: absolute" 
                        ValidationExpression="^[0-9]*">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewId" runat="server"></asp:TextBox> 
                    
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtNewName" ErrorMessage="Enter Valid Name" 
                        style="z-index: 1; left: 400px; top: 209px; position: absolute; right: 573px" 
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

            <asp:TemplateField HeaderText="DateOfBirth">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtNewDob" ErrorMessage="Enter Valid DOB" 
                        style="z-index: 1; left: 710px; top: 209px; position: absolute" 
                        ValidationExpression="^(((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00|[048])))$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewDob" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtNewPhone" ErrorMessage="Enter Valid Number" 
                        style="z-index: 1; left: 860px; top: 190px; position: absolute; width: 124px" 
                        ValidationExpression="^[^0-9]*([0-9][^0-9]*){8,10}$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewPhone" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="EmergencyContact" SortExpression="EmergencyContact">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtNewEmergency" ErrorMessage="Enter Valid EContact" 
                        style="z-index: 1; left: 1010px; top: 209px; position: absolute" 
                        ValidationExpression="^[^0-9]*([0-9][^0-9]*){8,10}$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewEmergency" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="DateOfRegistration" SortExpression="DateOfRegistration">
                <FooterTemplate>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txtNewRegistration" ErrorMessage="Enter Valid Date" 
                        style="z-index: 1; left: 1162px; top: 207px; position: absolute; width: 157px" 
                        ValidationExpression="^(((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00|[048])))$">
                    </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtNewRegistration" runat="server"></asp:TextBox>
                    
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
    
    
    
    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 221px; top: 125px; position: absolute"></asp:Label>
    
    
   
    <asp:GridView ID="grdPatientRegistration" runat="server" 
        AllowPaging="True" AutoGenerateEditButton="True" Caption="Patient Registration" 
        CellPadding="4" Font-Bold="True" ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="grdPatientRegistration_RowCancelingEdit" 
        onrowediting="grdPatientRegistration_RowEditing" 
        onrowupdating="grdPatientRegistration_RowUpdating" PageSize="2" 
        
        
        style="z-index: 1; left: 227px; top: 349px; position: absolute; height: 133px; width: 660px" 
        onpageindexchanging="grdPatientRegistration_PageIndexChanging">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#5D7B9D" 
        style="z-index: 1; left: 203px; top: 101px; position: absolute" 
        Text="St. Vincent's Patient Registration"></asp:Label>
    
&nbsp;<uc1:AdminOptionsControls ID="AdminOptionsControls1" runat="server" 
        Visible="False" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <so1:sto ID="sto1" runat="server" />

</asp:Content>
