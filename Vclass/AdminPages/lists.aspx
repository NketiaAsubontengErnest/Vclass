<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Vclass.AdminPages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" GridLines="Vertical" style="z-index: 1; left: 207px; top: 138px; position: absolute; height: 128px; width: 604px" OnRowDeleting="StudentGridView_RowDeleting" OnRowEditing="StudentGridView_RowEditing" OnRowCancelingEdit="StudentGridView_RowCancelingEdit" OnRowUpdating="StudentGridView_RowUpdating">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Index_No" HeaderText="Index" />
            <asp:BoundField DataField="F_Name" HeaderText="First Name" />
            <asp:BoundField DataField="S_Name" HeaderText="Second Name" />
            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher Name" />
            <asp:ButtonField ButtonType="Image" Text="Edit" ImageUrl="~/images/images/edit.png" ControlStyle-Width="20px" ControlStyle-Height="20px" CommandName="Edit" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:ButtonField>
            <asp:ButtonField ButtonType="Image" ImageUrl="~/images/images/delete.png" ControlStyle-Width="20px" ControlStyle-Height="20px" Text="Delete" CommandName="Delete" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:ButtonField>
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
</asp:Content>
