<%@ Page Title="" Language="C#" MasterPageFile="~/StudentsPages/StudentDashboard.Master" AutoEventWireup="true" CodeBehind="studentViewQuiz.aspx.cs" Inherits="Vclass.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
        <asp:Button ID="btnStart" runat="server" OnClick="btnStart_Click" CssClass="Button" style="z-index: 1; left: 658px; top: 390px; position: absolute; height: 73px; width: 214px;" Text="Attempt Quiz" />
    
    </asp:Content>
