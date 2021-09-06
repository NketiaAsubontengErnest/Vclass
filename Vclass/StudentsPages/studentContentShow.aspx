<%@ Page Title="" Language="C#" MasterPageFile="~/StudentsPages/StudentDashboard.Master" AutoEventWireup="true" CodeBehind="studentContentShow.aspx.cs" Inherits="Vclass.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 976px; top: 116px; position: absolute; height: 153px; width: 355px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 173px; top: 110px; position: absolute; height: 920px; width: 796px">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <table>
                     <tr>
                         <td>
                             <h2><b><%# Eval("Title") %></b></h2>
                         </td>
                     </tr>
                     <tr>
                         <td><%# Eval("Content") %></td>
                     </tr>
                 </table>
                 <br />
             </ItemTemplate>
        </asp:Repeater>
        
         <hr />
    </asp:Panel>
</asp:Content>
