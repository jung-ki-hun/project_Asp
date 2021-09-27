<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateID.aspx.cs" Inherits="CreateID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
        height: 124px;
    }
    .auto-style7 {
        text-align: center;
    }
        .auto-style11 {
            width: 1444px;
            height: 124px;
        }
        .auto-style12 {
            position: absolute;
            top: 224px;
            z-index: 1;
            width: 209px;
            height: 24px;
            left: 1038px;
            text-align: left;
        }
        .auto-style14 {
            text-align: right;
            width: 696px;
        }
        .auto-style15 {
            width: 721px;
        }
        .auto-style16 {
            position: absolute;
            top: 224px;
            z-index: 1;
            width: 696px;
            height: 24px;
            left: 1038px;
            text-align: center;
        }
        .auto-style17 {
            text-align: right;
            width: 696px;
            height: 30px;
        }
        .auto-style18 {
            width: 721px;
            height: 30px;
        }
        .auto-style19 {
            width: 1444px;
            height: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style19">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style12">회원가입</td>
        </tr>
        <tr>
            <td class="auto-style17">이름</td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="올바르지 않는 이름입니다." ValidationExpression="[가-힣a-zA-Z]{2,4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">아이디</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="134px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="4자 ~ 10자사이 영문자,숫자만가능" ValidationExpression="[0-9a-zA-Z]{4,10}" ViewStateMode="Enabled"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">비밀번호 </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="132px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="4~8자 영문자, 숫자만 가능" ValidationExpression="[0-9a-zA-Z]{4,8}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">이메일 입력</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" Height="17px" Width="132px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="이메일을 정확히 입력해주세요" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">성별</td>
            <td class="auto-style15">
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="a" Text="M" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="F" />
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="회원가입하기" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Content>

