<%@ Page Title="St. Vincent's Doctor Patient Info" Language="C#" Theme="Admin" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="AssignDoctorToPatient.aspx.cs" Inherits="Demo.AdminOpeartions.AssignDoctorToPaatient" %>
<%@ Register Src="~/UserControls/AdminOptionsControls.ascx" TagPrefix="adm1" TagName="adm2"%>
<%@ Register Src="~/UserControls/LogoutControl.ascx" TagPrefix="lg1" TagName="lgo"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="../UserControls/StaffOptions.ascx" tagname="StaffOptions" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <lg1:lgo ID="lg2" runat="server" />

    <asp:GridView ID="grdHistory" runat="server" AllowPaging="True" 
        Caption="Treatment History" CellPadding="4" Font-Bold="True" 
        ForeColor="#333333" GridLines="None" PageSize="2" 
        
        style="z-index: 1; left: 232px; top: 139px; position: absolute; height: 133px; width: 502px" 
        onpageindexchanging="grdHistory_PageIndexChanging">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
&nbsp;<asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="Red" 
        style="z-index: 1; left: 236px; top: 226px; position: absolute"></asp:Label>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
        ForeColor="#5D7EAD" 
        style="z-index: 1; left: 234px; top: 96px; position: absolute" 
        Text="Doctor Patient Info"></asp:Label>
    <asp:Panel ID="pnlAssign" runat="server" 
        
        style="z-index: 1; left: 235px; top: 136px; position: absolute; height: 314px; width: 504px">
        <asp:Label ID="Label3" runat="server" 
    style="z-index: 1; left: 5px; top: 3px; position: absolute" Text="Doctor Id" 
            Font-Bold="True"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 5px; top: 33px; position: absolute" Text="PatientId"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 4px; top: 64px; position: absolute" 
            Text="Patient Type"></asp:Label>
        <asp:Label ID="lblBedId" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 4px; top: 95px; position: absolute; right: 455px" 
            Text="Bed Id"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 4px; top: 127px; position: absolute" Text="Visit Date"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 5px; top: 158px; position: absolute" Text="Symptoms"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 5px; top: 189px; position: absolute" Text="Disease"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 5px; top: 218px; position: absolute" Text="Treatment"></asp:Label>
        <asp:DropDownList ID="ddlDoctorId" runat="server" 
            style="z-index: 1; left: 101px; top: 1px; position: absolute; height: 19px; width: 41px;">
        </asp:DropDownList>
        <asp:DropDownList ID="ddlPatientId" runat="server" 
            style="z-index: 1; left: 102px; top: 31px; position: absolute">
        </asp:DropDownList>
        <asp:RadioButton ID="rdbIn" runat="server" AutoPostBack="True" GroupName="Type" 
            oncheckedchanged="rdbIn_CheckedChanged" 
            style="z-index: 1; left: 99px; top: 65px; position: absolute" Text="IN" />
        <asp:RadioButton ID="rdbOut" runat="server" AutoPostBack="True" 
            BorderColor="#0066CC" GroupName="Type" oncheckedchanged="rdbOut_CheckedChanged" 
            style="z-index: 1; left: 188px; top: 66px; position: absolute" Text="OUT" />
        <asp:DropDownList ID="ddlBedId" runat="server" 
            style="z-index: 1; left: 105px; top: 95px; position: absolute">
        </asp:DropDownList>
        <asp:TextBox ID="txtVisitDate" runat="server" 
            style="z-index: 1; left: 104px; top: 124px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtSymptoms" runat="server" 
            style="z-index: 1; left: 105px; top: 158px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtDisease" runat="server" 
            style="z-index: 1; left: 105px; top: 189px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtTreatment" runat="server" 
            style="z-index: 1; left: 104px; top: 216px; position: absolute"></asp:TextBox>
        <asp:Button ID="btnAssign" runat="server" 
            Font-Bold="True" ForeColor="Black" 
            
            style="z-index: 1; left: 59px; top: 264px; position: absolute; width: 181px;" 
            Text="Assign Doctor To Patient" onclick="btnAssign_Click" 
            BackColor="White" BorderStyle="None" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtSymptoms" ErrorMessage="Enter Symptoms" Font-Bold="True" 
            style="z-index: 1; left: 263px; top: 162px; position: absolute" 
            EnableClientScript="False"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtPatientType" runat="server" 
            style="z-index: 1; left: 261px; top: 65px; position: absolute; width: 43px"></asp:TextBox>
        <asp:Button ID="btnHistory" runat="server" Font-Bold="True" 
            onclick="btnHistory_Click" 
            style="z-index: 1; left: 255px; top: 260px; position: absolute; width: 167px; height: 22px;" 
            Text="Show Treatment History" BackColor="White" BorderStyle="None" />
    </asp:Panel>
    <asp:Panel ID="pnlSearch" runat="server" 
        style="z-index: 1; left: 238px; top: 333px; position: absolute; height: 154px; width: 497px">
        <asp:DropDownList ID="ddlDoctors" runat="server" 
    style="z-index: 1; left: 63px; top: 70px; position: absolute" AutoPostBack="True" 
            onselectedindexchanged="ddlDoctors_SelectedIndexChanged">
        </asp:DropDownList>
        <cc1:DropDownExtender ID="ddlDoctors_DropDownExtender" runat="server" 
            DynamicServicePath="" Enabled="True" TargetControlID="ddlDoctors">
        </cc1:DropDownExtender>
        
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
            style="z-index: 1; left: 6px; top: 48px; position: absolute; height: 24px" 
            Text="Doctor ID"></asp:Label>
        <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/bg_box_search.jpg" 
            style="z-index: 1; left: 4px; top: 92px; position: absolute; width: 182px; height: 54px" />
        <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/header_search.png" 
            style="z-index: 1; left: 0px; top: 0px; position: absolute; width: 184px" />
        <asp:Button ID="btnAssignDoctor" runat="server" Font-Bold="True" 
            onclick="btnAssignDoctor_Click" 
            style="z-index: 1; left: 220px; top: 54px; position: absolute" 
            Text="Assign Doctor To Patient" BackColor="White" BorderStyle="None" />
    </asp:Panel>
    
    <adm1:adm2 ID="adm12" runat="server" /> 
    <uc1:StaffOptions ID="StaffOptions1" runat="server" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
