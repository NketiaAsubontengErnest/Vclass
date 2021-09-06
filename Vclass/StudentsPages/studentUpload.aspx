<%@ Page Title="" Language="C#" MasterPageFile="~/StudentsPages/StudentDashboard.Master" AutoEventWireup="true" CodeBehind="studentUpload.aspx.cs" Inherits="Vclass.StudentsPages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:FileUpload ID="FileUpload1" CssClass="inputs" runat="server" style="z-index: 1; left: 332px; top: 234px; position: absolute; width: 326px; height: 33px;" />
    <asp:Button ID="btnUpload" CssClass="Button" runat="server" style="z-index: 1; left: 336px; top: 291px; position: absolute; height: 51px; width: 146px; right: 498px;" Text="Submit" OnClick="btnUpload_Click" />
    </asp:Content>
