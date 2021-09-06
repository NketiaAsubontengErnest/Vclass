<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="addStudents.aspx.cs" Inherits="Vclass.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <asp:Label ID="Label1" runat="server" CssClass="labels" style="z-index: 1; left: 239px; top: 108px; position: absolute; height: 18px" Text="Index: "></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="labels" style="z-index: 1; left: 239px; top: 168px; position: absolute" Text="First Name"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="labels" style="z-index: 1; left: 239px; top: 278px; position: absolute" Text="Teacher"></asp:Label>
    <asp:TextBox ID="txtIndex" runat="server" CssClass="inputs" style="z-index: 1; left: 405px; top: 99px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:TextBox ID="txtDefaultPass" CssClass="inputs" runat="server" style="z-index: 1; left: 405px; top: 330px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:TextBox ID="txtFullName" runat="server" CssClass="inputs" style="z-index: 1; left: 405px; top: 159px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:DropDownList ID="cmbTeacher" runat="server" CssClass="inputs" style="z-index: 1; left: 406px; top: 275px; position: absolute; width: 377px; height: 30px">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" CssClass="labels" style="z-index: 1; left: 239px; top: 340px; position: absolute" Text="Default Password"></asp:Label>
    <asp:TextBox ID="txtSname" runat="server" CssClass="inputs" style="z-index: 1; left: 406px; top: 218px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" CssClass="labels" style="z-index: 1; left: 243px; top: 230px; position: absolute" Text="Last Name: "></asp:Label>
    <asp:Button ID="btnAdd" CssClass="Button" runat="server" style="z-index: 1; left: 400px; top: 391px; position: absolute; width: 163px; bottom: 107px; right: 346px;" Text="Add" OnClick="btnAdd_Click" />
</asp:Content>
