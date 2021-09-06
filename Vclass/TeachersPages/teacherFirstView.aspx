<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersPages/TeacherDashboard.Master" AutoEventWireup="true" CodeBehind="teacherFirstView.aspx.cs" Inherits="Vclass.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet2.css" rel="stylesheet" />
    <style type="text/css">

        #TextArea1 {
            z-index: 1;
            left: 22px;
            top: 116px;
            position: absolute;
            height: 287px;
            width: 857px;
        }
        #TextArea1{
            font-style: normal;
            font-size: 18px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnSeeResults" runat="server" CssClass="Button" style="z-index: 1; left: 952px; top: 652px; position: absolute; height: 48px; width: 360px" Text="Quiz Results" OnClick="btnSeeResults_Click" />
    <asp:Button ID="Button3" runat="server" CssClass="Button" style="z-index: 1; left: 954px; top: 588px; position: absolute; height: 54px; width: 360px" Text="Student Assignments" OnClick="Button3_Click" />
    <asp:Panel ID="Panel2" CssClass="container" runat="server" style="z-index: 1; left: 14px; top: 125px; position: absolute; height: 648px; width: 909px">
        <asp:Label ID="Label4" CssClass="labels" runat="server" style="z-index: 1; color :white; left: 31px; top: 33px; position: absolute" Text="Title"></asp:Label>
        <asp:TextBox ID="txtTitle" CssClass="inputs" runat="server" style="z-index: 1;  left: 101px; top: 27px; position: absolute; height: 25px; width: 777px; bottom: 414px"></asp:TextBox>
        <asp:Label ID="Label5" CssClass="labels" runat="server" style="z-index: 1; color :white; left: 29px; top: 85px; position: absolute; height: 25px" Text="Content"></asp:Label>
        &nbsp;<asp:Button ID="btnClear" CssClass="Button" runat="server" style="z-index: 1; left: 534px; top: 565px; position: absolute; height: 52px; width: 174px" Text="Clear" OnClick="btnClear_Click" />
        <asp:Button ID="btnPost" CssClass="Button" runat="server" style="z-index: 1; left: 723px; top: 565px; position: absolute; height: 50px; width: 154px" Text="Post" OnClick="btnPost_Click" />
        <asp:TextBox ID="txtContent" runat="server" style="z-index: 1; left: 28px; top: 115px; position: absolute; height: 440px; width: 852px" TextMode="MultiLine"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Panel3" CssClass="container" runat="server" style="z-index: 1; left: 952px; top: 125px; position: absolute; height: 333px; width: 362px">
            <asp:Label ID="Label2" CssClass="labels" runat="server" style="z-index: 1; color :white; left: 21px; top: 170px; position: absolute" Text="File"></asp:Label>
            <asp:Button ID="Button2" CssClass="Button" runat="server" style="z-index: 1; left: 21px; top: 229px; position: absolute; height: 47px; width: 137px" Text="Clear" OnClick="Button2_Click" />
            <asp:FileUpload ID="FileUpload1" CssClass="Button" runat="server" style="z-index: 1; left: 73px; top: 152px; position: absolute; width: 219px; height: 16px" />
            <asp:Label ID="Label3" CssClass="labels" runat="server" style="z-index: 1; color :white; left: 134px; top: 34px; position: absolute" Text="Add Activity"></asp:Label>
            <asp:DropDownList ID="cmbActivity" CssClass="inputs" runat="server" style="z-index: 1; left: 101px; top: 105px; position: absolute; height: 31px; width: 247px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Assignment</asp:ListItem>
                <asp:ListItem>Note</asp:ListItem>
                <asp:ListItem>Video</asp:ListItem>
            </asp:DropDownList>
            
            <asp:Button ID="btnSave" CssClass="Button" runat="server" OnClick="btnSave_Click" style="z-index: 1; left: 197px; top: 228px; position: absolute; height: 50px; width: 143px" Text="Save" />
            
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 0px; top: 0px; position: absolute" Text="Label"></asp:Label>
            
        </asp:Panel>
        <asp:Label ID="Label1" CssClass="labels" runat="server" style="z-index: 1; color :white; left: 971px; top: 231px; position: absolute" Text="Activity"></asp:Label>
        <asp:Button ID="btnQuiz" CssClass="Button" runat="server" style="z-index: 1; left: 953px; top: 467px; position: absolute; height: 53px; width: 360px; bottom: 119px" Text="Add Quiz" OnClick="btnQuiz_Click" />
        <asp:Button ID="btnUploaded" CssClass="Button" runat="server" style="z-index: 1; left: 954px; top: 528px; position: absolute; height: 53px; width: 360px;" Text="See Uploaded" OnClick="btnUploaded_Click" />

</asp:Content>
