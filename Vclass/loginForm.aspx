<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginForm.aspx.cs" Inherits="Vclass.WebForm11" %>
<%@MasterType VirtualPath="~/TeachersPages/TeacherDashboard.Master" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <style>
        #form1{
            left: 493px; 
            top: 138px; 
            position: absolute; 
            height: 428px; 
            width: 380px
        }
    </style>


    
</head>
<body>

    <form id="form1" class ="container panels" runat="server">
        <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 147px; top: 19px; position: absolute; height: 87px; width: 105px; bottom: 322px;" ImageUrl="~/images/login.png" />
        <asp:TextBox ID="txtPassword" Type="Password" runat="server" CssClass="inputs" style="z-index: 1; left: 47px; top: 260px; position: absolute; height: 46px; width: 290px" TabIndex="1"></asp:TextBox>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="inputs" style="z-index: 1; left: 47px; top: 156px; position: absolute; height: 44px; width: 290px" TabIndex="0"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" CssClass="Button" style="z-index: 1; opacity: 100%; left: 46px; top: 330px; position: absolute; height: 54px; width: 296px" Text="Login" OnClick="btnLogin_Click" TabIndex="2" />
        <asp:Label ID="Label1" CssClass="labels" runat="server" style="z-index: 1; left: 156px; top: 130px; position: absolute" Text="Username" ForeColor="White"></asp:Label>
        <asp:Label ID="Label2" CssClass="labels" runat="server" style="z-index: 1; left: 159px; top: 234px; position: absolute" Text="Password" ForeColor="White"></asp:Label>
          
    </form>
</body>
</html>
