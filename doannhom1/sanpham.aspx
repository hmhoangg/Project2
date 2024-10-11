<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="doannhom1.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <style>
        .hinhsp{
            width: 200px;
            transition:0.3s;
            height:150px;
        }
        .hinhsp:hover{
            transform:scale(1.1);
        }
        .sanpham{
          
            overflow:hidden;
            margin:5px;
            text-align:center;
        }
        .gia{
            color:forestgreen;
            font-size:20px;
            font-weight:bold;
        }
        .chitiet{
            color:red;
            font-size:10px;
            font-weight:bold;
            float:right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2> Sản Phẩm</h2>
    <asp:datalist ID="DataList1" runat="server" RepeatColumns="4">
         <ItemTemplate>
           <div class="sanpham">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenhang") %>'></asp:Label>
            <br />
            <asp:Image CssClass="hinhsp" ID="Image1" ImageUrl='<%# "~/images/" + Eval("hinh")%>' runat="server"/>
            <br />
            Giá: <asp:Label CssClass="gia" ID="Label2" runat="server" Text='<%# Eval("donggia","{0:0,0}") %>'></asp:Label>
           </div>
             <asp:LinkButton CssClass="chitiet" ID="LinkButton1" runat="server" 
                 CommandArgument='<%# Eval("mahang") %>' OnClick="LinkButton1_Click">Chi Tiết</asp:LinkButton>
        </ItemTemplate>
    </asp:datalist>
</asp:Content>