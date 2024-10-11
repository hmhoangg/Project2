<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="doannhom1.giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2{
            font-size: 30px;
            color:red;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Giỏ Hàng</h2>
     <div class="nd">
         <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:BoundField DataField="mahang" HeaderText="Mã Hàng"></asp:BoundField>
            <asp:BoundField DataField="tenhang" HeaderText="Tên Hàng"></asp:BoundField>
            <asp:BoundField DataField="donggia" HeaderText="Đơn Giá"></asp:BoundField>
            <asp:BoundField DataField="soluong" HeaderText="Số Lượng"></asp:BoundField>
            <asp:BoundField DataField="ThanhTien" HeaderText="ThàhTiền"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     </div>
</asp:Content>
