<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Write.aspx.cs" Inherits="comu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 500px;
            text-align: right;
        }
        .auto-style18 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style14">
        &nbsp;</p>
    <p class="auto-style14">
        <table class="auto-style16">
            <tr>
                <td class="auto-style17">글쓴이 : </td>
                <td class="auto-style18">
        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Enabled="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 언어종류 :<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>C/C++</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>Asp.Net</asp:ListItem>
                        <asp:ListItem>기타</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">제목 :</td>
                <td class="auto-style18">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" Width="419px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="제목을 입력하세요!!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">내용 :</td>
                <td class="auto-style18"> <asp:TextBox ID="TextBox4" runat="server" Height="151px" TextMode="MultiLine" Width="416px" ValidateRequestMode="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
        <asp:Button ID="Button2" runat="server" Text="목록보기" OnClick="Button2_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="저장" />
                </td>
            </tr>
        </table>
    &nbsp;&nbsp;&nbsp;
        </p>
</asp:Content>

