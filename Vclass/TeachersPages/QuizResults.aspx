<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersPages/TeacherDashboard.Master" AutoEventWireup="true" CodeBehind="QuizResults.aspx.cs" Inherits="Vclass.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 208px; top: 110px; position: absolute; height: 920px; width: 900px">
        <asp:GridView ID="MarksGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="892px">

            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Student_Index" HeaderText="Student Idex" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" />
                <asp:BoundField DataField="Submited_Time" HeaderText="Submited_Time" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />

        </asp:GridView>
    </asp:Panel>
</asp:Content>
