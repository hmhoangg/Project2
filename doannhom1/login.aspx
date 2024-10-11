<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="doannhom1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
#login{
    width: 700px;
    height: 400px;
    border: 6px solid white;
    border-radius: 10px;
    padding: 15px;
    text-align: center;
    background-color: #333333;
    margin: auto;
  
}
h1{
    font-family: 'Dancing Script', cursive;
    font-family: 'Gloock', serif;
    font-family: 'Montserrat', sans-serif;
    font-family: 'Oswald', sans-serif;
    font-family: 'Roboto Condensed', sans-serif;
    font-family: 'Shantell Sans', cursive;
    font-family: 'Tilt Warp', cursive;
    color: white;
}
.txt{
    width: 400px;
    height: 40px;
    margin: 15px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid white; 
}
.btn{
    width: 400px;
    height: 40px;
    margin: 15px;
    background-color: green;
    color: white;
    border: 1px solid #333333;
    border-radius: 7px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="login">
        <div class="add">
            <h1>Đăng Nhập</h1> 
            <input class="txt" type="text" name="" id="" placeholder="Username">
            <input class="txt" type="password" name="" id="" placeholder="Password">
            <input class="btn" type="button" value="Đăng Nhập">
            <p>Already have account ?</p>
            
        </div>
    </div>
</asp:Content>
