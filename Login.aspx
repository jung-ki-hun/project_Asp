<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            position: relative;
            top: -126px;
            left: 485px;
            z-index: 1;
        }
        .auto-style9 {
            position: relative;
            top: -12px;
            left: -558px;
            z-index: 1;
            height: 50px;
        }
        .auto-style10 {
            position: relative;
            top: -11px;
            left: -504px;
            z-index: 1;
        }
        .auto-style12 {
            position: relative;
            top: -134px;
            left: 69px;
            z-index: 1;
            width: 333px;
            height: 42px;
        }
        .auto-style14 {
            position: relative;
            left: 470px;
            top: -6px;
        }
        .auto-style15 {
            position: relative;
            left: -268px;
            top: -194px;
            width: 233px;
            height: 39px;
        }
        .auto-style16 {
            position: relative;
            top: -14px;
            left: -325px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 240px;
            left: 506px;
            z-index: 1;
            height: 48px;
            width: 213px;
        }
    .auto-style18 {
        position: absolute;
        top: 21px;
        left: 592px;
        z-index: 1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" CssClass="auto-style14" ImageUrl="~/image/LoginPage/로그인창.png" />
                <asp:TextBox ID="TextBox2" runat="server" BackColor="WhiteSmoke" BorderStyle="None" CssClass="auto-style12" TabIndex="2" TextMode="Password" ></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="WhiteSmoke" BorderStyle="None" CssClass="auto-style15" TabIndex="1"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style17" ImageUrl="~/image/LoginPage/회원가입.png" OnClick="ImageButton2_Click" Height="50px" Width="180px" />
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style16" ImageUrl="~/image/LoginPage/아이디 찾기입.png" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style8" ImageUrl="~/image/LoginPage/로그인버튼버튼.png" OnClick="ImageButton1_Click" TabIndex="3" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style18"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

