<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="Vclass.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<asp:Label ID="Label1" runat="server" CssClass="labels" style="z-index: 1; left: 267px; top: 132px; position: absolute" Text="Staff ID: "></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="labels" style="z-index: 1; left: 267px; top: 194px; position: absolute" Text="First Name: "></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="labels" style="z-index: 1; left: 267px; top: 315px; position: absolute" Text="Subject: "></asp:Label>
    <asp:TextBox ID="txtSName" runat="server" CssClass="inputs" style="z-index: 1; left: 433px; top: 251px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" cssClass="labels" style="z-index: 1; left: 267px; top: 260px; position: absolute" Text="Sercond Name:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="labels" style="z-index: 1; left: 267px; top: 425px; position: absolute" Text="Defualt Password:"></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="inputs" runat="server" style="z-index: 1; left: 433px; top: 364px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:Label ID="Label5" CssClass="labels" runat="server" style="z-index: 1; left: 267px; top: 375px; position: absolute" Text="Email"></asp:Label>
    <asp:Button ID="Button3" runat="server" CssClass="Button" style="z-index: 1; left: 436px; top: 458px; position: absolute; height: 46px; width: 162px" Text="Add" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" CssClass="Button" style="z-index: 1; left: 665px; top: 457px; position: absolute; height: 47px; width: 150px" Text="Clear" OnClick="Button4_Click" />
    <asp:TextBox ID="txtStaffID" runat="server" CssClass="inputs" style="z-index: 1; left: 432px; top: 124px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:TextBox ID="txtFName" runat="server" CssClass="inputs" style="z-index: 1; left: 432px; top: 185px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:TextBox ID="txtSubject" runat="server" CssClass="inputs" style="z-index: 1; left: 432px; top: 305px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
    <asp:TextBox ID="txtDefaultPass" runat="server" CssClass="inputs" style="z-index: 1; left: 432px; top: 417px; position: absolute; width: 377px; height: 30px"></asp:TextBox>
</asp:Content>
