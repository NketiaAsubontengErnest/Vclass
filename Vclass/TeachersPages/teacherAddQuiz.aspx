<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersPages/TeacherDashboard.Master" AutoEventWireup="true" CodeBehind="teacherAddQuiz.aspx.cs" Inherits="Vclass.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Text1 {
            z-index: 1;
            left: 3px;
            top: 4px;
            position: absolute;
            height: 161px;
            width: 616px;
        }

        #TextArea1 {
            z-index: 1;
            left: 3px;
            top: 3px;
            position: absolute;
            height: 163px;
            width: 617px;
        }
      
        #txtQuestion {
            height: 167px;
            width: 622px;
        }
      
        #txtQuestions {
            height: 165px;
            width: 624px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 173px; top: 145px; position: absolute; height: 176px; width: 632px">
        <asp:TextBox ID="txtQuestion" CssClass="inputs" runat="server" Height="166px" TextMode="MultiLine" Width="624px"></asp:TextBox>
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" CssClass="labels" style="z-index: 1; left: 168px; top: 116px; position: absolute" Text="Question"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="labels" style="z-index: 1; left: 138px; top: 354px; position: absolute" Text="A"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="labels" style="z-index: 1; left: 140px; top: 592px; position: absolute" Text="D"></asp:Label>
    <asp:TextBox ID="txtOption3" runat="server" CssClass="inputs" style="z-index: 1; left: 175px; top: 500px; position: absolute; height: 33px; width: 616px"></asp:TextBox>
    <asp:TextBox ID="txtOption4" runat="server" CssClass="inputs" style="z-index: 1; left: 175px; top: 582px; position: absolute; height: 34px; width: 616px"></asp:TextBox>
    &nbsp;<asp:TextBox ID="txtOption1" runat="server" CssClass="inputs" style="z-index: 1; left: 175px; top: 349px; position: absolute; height: 26px; width: 617px"></asp:TextBox>
    <asp:Button ID="btnClear" runat="server" CssClass="Button" style="z-index: 1; left: 534px; top: 654px; position: absolute; height: 47px; width: 174px" Text="Clear" />
    <asp:Button ID="btnAdd" runat="server" CssClass="Button" style="z-index: 1; left: 316px; top: 650px; position: absolute; height: 53px; width: 182px" Text="Add" OnClick="btnAdd_Click" />
    <asp:TextBox ID="txtOption2" runat="server" CssClass="inputs" style="z-index: 1; left: 175px; top: 430px; position: absolute; height: 30px; width: 616px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" CssClass="labels" style="z-index: 1; left: 139px; top: 436px; position: absolute" Text="B"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="labels" style="z-index: 1; left: 140px; top: 508px; position: absolute" Text="C"></asp:Label>
    <asp:RadioButton ID="RadOption1" runat="server" style="z-index: 1; left: 814px; top: 356px; position: absolute" GroupName ="chosenAnswer" />
    <asp:RadioButton ID="RadOption2" runat="server" style="z-index: 1; left: 814px; top: 436px; position: absolute" GroupName ="chosenAnswer"/>
    <asp:RadioButton ID="RadOption4" runat="server" style="z-index: 1; left: 814px; top: 593px; position: absolute" GroupName ="chosenAnswer"/>
    <asp:RadioButton ID="RadOption3" runat="server" style="z-index: 1; left: 814px; top: 512px; position: absolute" GroupName ="chosenAnswer"/>
</asp:Content>
