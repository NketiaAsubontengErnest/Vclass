<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="AccessList.aspx.cs" Inherits="Vclass.AdminPages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowEditing="StudentGridView_RowEditing" DataKeyNames="ID"  style="z-index: 1; left: 203px; top: 141px; position: absolute; height: 128px; width: 476px" OnRowCancelingEdit="StudentGridView_RowCancelingEdit" OnRowUpdating="StudentGridView_RowUpdating1" OnRowDeleting="StudentGridView_RowDeleting" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        
        <Columns>
            <asp:BoundField DataField="Index_No" HeaderText="Index No" ReadOnly="True" />
            <asp:BoundField DataField="F_Name" HeaderText="First Name" />
            <asp:BoundField DataField="S_Name" HeaderText="Second Name" />
            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher Name" />
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/images/cancel.png" EditImageUrl="~/images/images/edit.png" ShowEditButton="True" UpdateImageUrl="~/images/images/Update.png" ControlStyle-Width="20px" ControlStyle-Height="20px" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/images/delete.png" ShowDeleteButton="True" ControlStyle-Width="20px" ControlStyle-Height="20px" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:CommandField>
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
    <asp:GridView ID="TeachersGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" style="z-index: 1; left: 717px; top: 143px; position: absolute; height: 171px; width: 576px" OnRowCancelingEdit="TeachersGridView_RowCancelingEdit" OnRowEditing="TeachersGridView_RowEditing" OnRowUpdating="TeachersGridView_RowUpdating" OnRowDeleting="TeachersGridView_RowDeleting">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Staff_ID" HeaderText="Staff ID" ReadOnly="True" />
            <asp:BoundField DataField="F_Name" HeaderText="First Name" />
            <asp:BoundField DataField="S_Name" HeaderText="Second Name" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/images/cancel.png" EditImageUrl="~/images/images/edit.png" ShowEditButton="True" UpdateImageUrl="~/images/images/Update.png" ControlStyle-Width="20px" ControlStyle-Height="20px">
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/images/delete.png" ShowDeleteButton="True" ControlStyle-Width="20px" ControlStyle-Height="20px" >
<ControlStyle Height="20px" Width="20px"></ControlStyle>
            </asp:CommandField>
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
