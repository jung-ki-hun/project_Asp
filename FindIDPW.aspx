<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FindIDPW.aspx.cs" Inherits="ㅁㄴㄻㄹ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }
        .auto-style11 {
            height: 20px;
        }
        .auto-style13 {
            width: 99px;
        }
        .auto-style14 {
            width: 99px;
            height: 20px;
        }
        .auto-style15 {
            width: 140px;
            height: 20px;
        }
        .auto-style17 {
            width: 140px;
        }
        .auto-style18 {
            width: 1433px;
        }
        .auto-style19 {
            width: 194px;
            height: 20px;
        }
        .auto-style20 {
            width: 194px;
        }
        .auto-style21 {
            height: 20px;
            width: 425px;
        }
        .auto-style22 {
            width: 425px;
        }
        .auto-style23 {
            width: 1422px;
        }
        .auto-style24 {
            text-align: left;
            position: relative;
            left: 0px;
            top: 1px;
        }
        .auto-style25 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/FindIDPWPage/아이디찾기 윗부분.png" OnClick="ImageButton3_Click" />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <br />
            <asp:View ID="View1" runat="server">
                <div class="auto-style6">
                    왼쪽 아이디&lt;--&gt;오른쪽 비밀번호&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style14">아이디 찾기</td>
                        <td class="auto-style15"></td>
                        <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">E-mail</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="이메일 주소를 입력하세요" EnableClientScript="False"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="정확한 이메일 주소를 입력하세요" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Button" />
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="auto-style23">
                    <tr>
                        <td class="auto-style11">비밀번호 찾기</td>
                        <td class="auto-style11"></td>
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="아이디를 입력하세요" EnableClientScript="False"></asp:RequiredFieldValidator>
                            &nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="정확한 이메일 주소를 입력하세요" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="이메일 주소를 입력하세요" EnableClientScript="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="정확한 이메일 주소를 입력하세요" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                        </td>
                        <td class="auto-style22">&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <div class="auto-style24">
                    <div class="auto-style25">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="아이디 찾기창으로" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="비밀번호 찾기창으로" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="로그인창으로 이동" />
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <div class="auto-style25">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="아이디 찾기창으로 이동" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="비밀번호 찾기창으로" />
                    &nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="로그인창으로 이동" />
                </div>
            </asp:View>
            <br />
        </asp:MultiView>
    </p>
    <p>
    </p>
</asp:Content>

