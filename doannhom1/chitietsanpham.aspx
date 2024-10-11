<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitietsanpham.aspx.cs" Inherits="doannhom1.chitietsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
        .hinhsp{
            width: 200px;
            height:150px;
        }
        .chitiet{
             width: 80%;
             height: auto;
             display: flex;
             grid-gap: 40px;
             height: auto;
             text-align:center;
            
             margin-right:700px;
              margin-top: 100px;
        }
        .chitiet .left{
            
            padding: 10px;
            text-align: center;
        }
        .gia {
            font-size: 15px;
            font-weight: bold;
        }
        .chitiet .right{
            width: 400px;
            text-align: center;
            font-size: 25px;
        }
        .tenhang{
          
            color: red;
            font-size: 30px;
        }
        .mota{
            
            text-align:center;
            font-size: 20px;

        }
        .soluong{
            width: 50px;
        }
        .mua{
            font-size: 20px;
            color: aqua;
            background-color: red;
            border-radius: 10px;
            border: 6px solid white;
            padding: 5px;
        }
        .gio{
            font-size: 25px;
            text-align: right;
            color:red;
        }
       
            
        }
        .td{
            font-size:35px;
            padding-top:10px;
            padding-left:15px;
        }
        .txt{
            font-size:15px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <h2 class="td"> Chi Tiết Sản Phẩm</h2>
    <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
            <div class="chitiet">
                <div class="left">
                    <asp:Image CssClass="hinhsp" ID="Image1" ImageUrl='<%# "~/images/" + Eval("hinh")%>' runat="server"/>
                   <br />
                  Giá:  <asp:Label CssClass="gia" ID="Label2" runat="server" Text='<%# Eval("donggia","{0:0,0}") %>'></asp:Label>
                </div>
                   <div class="right">
                       <asp:Label CssClass="tenhang" ID="Label1" runat="server" Text='<%# Eval("tenhang") %>'></asp:Label>
                       <br />
                       <asp:Label CssClass="mota" ID="Label3" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                       <br />
                          số lượng: <asp:TextBox CssClass="soluong" ID="TextBox1" runat="server"></asp:TextBox>
                       <asp:Button CssClass="mua" ID="Button1" runat="server" Text="Mua Hàng"  CommandArgument='<%# Eval("mahang") %>' OnClick="Button1_Click" />      
                   </div>  
            </div>
                <asp:LinkButton CssClass="gio" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Giỏ Hàng</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
