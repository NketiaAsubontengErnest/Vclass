<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managingForm.aspx.cs" Inherits="Vclass.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;</div>
            <asp:Panel ID="Panel1" CssClass="container" runat="server" style="z-index: 1; left: 4px; top: 15px; position: absolute; height: 96px; width: 1333px">
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 10px; top: 131px; position: absolute; height: 584px; width: 896px">
            <asp:Label ID="Label5" CssClass="labels" runat="server" style="z-index: 1; left: 20px; top: 82px; position: absolute" Text="ID: "></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="labels" style="z-index: 1; left: 20px; top: 132px; position: absolute; height: 21px" Text="First Name:"></asp:Label>
            <asp:Label ID="Label9" runat="server" CssClass="labels" style="z-index: 1; left: 21px; top: 178px; position: absolute" Text="Second Name:"></asp:Label>
            <asp:Label ID="lblID" CssClass="labels" runat="server" style="z-index: 1; left: 162px; top: 82px; position: absolute" Text="Label"></asp:Label>
            <asp:Label ID="lblFirstName" runat="server" CssClass="labels" style="z-index: 1; left: 161px; top: 132px; position: absolute; height: 18px;" Text="Label"></asp:Label>
            <asp:Label ID="lblSecondName" runat="server" CssClass="labels" style="z-index: 1; left: 160px; top: 184px; position: absolute" Text="Label"></asp:Label>
            <asp:Image ID="imgProfile" runat="server" style="z-index: 1; left: 696px; top: 54px; position: absolute; height: 91px; width: 106px" />
            &nbsp;<asp:FileUpload  ID="FileUpload1" runat="server" style="z-index: 1; left: 708px; top: 146px; position: absolute; width: 88px; height: 21px;" />
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" CssClass="Button" style="z-index: 1; left: 643px; top: 523px; position: absolute; height: 64px; width: 166px" Text="Save" />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 916px; top: 132px; position: absolute; height: 578px; width: 423px">
            <asp:TextBox ID="txtOldPass" CssClass="inputs" runat="server" style="z-index: 1; left: 36px; top: 143px; position: absolute; height: 37px; width: 349px;"></asp:TextBox>
            <asp:TextBox ID="txtNewPass" Type="Password" CssClass="inputs" runat="server" style="z-index: 1; left: 36px; top: 242px; position: absolute; height: 37px; width: 349px;"></asp:TextBox>
            <asp:TextBox ID="txtConfNewPass" Type="Password" CssClass="inputs" runat="server" style="z-index: 1; left: 36px; top: 334px; position: absolute; height: 37px; width: 349px;"></asp:TextBox>
            <asp:Button ID="btnChangePass" CssClass="Button" runat="server" style="z-index: 1; left: 36px; top: 401px; position: absolute; height: 77px; width: 358px;" Text="Change" OnClick="btnChangePass_Click" />
            <asp:Label ID="Label15" CssClass="labels" runat="server" style="z-index: 1; left: 39px; top: 120px; position: absolute" Text="Old Password"></asp:Label>
            <asp:Label ID="Label16" CssClass="labels" runat="server" style="z-index: 1; left: 38px; top: 219px; position: absolute" Text="New Password"></asp:Label>
            <asp:Label ID="Label17" CssClass="labels" runat="server" style="z-index: 1; left: 37px; top: 312px; position: absolute" Text="Confirm Password"></asp:Label>
        </asp:Panel>
    </form>
    
</body>
</html>
