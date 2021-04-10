<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Myidents.aspx.cs" Inherits="Myidents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        text-align: center;
    }
    .auto-style13 {
        width: 100%;
    }
    .auto-style15 {
        text-align: left;
    }
    .auto-style16 {
        width: 654px;
    }
    .auto-style17 {
        width: 654px;
        text-align: right;
    }
    .auto-style18 {
        width: 676px;
    }
    .auto-style19 {
        width: 676px;
        height: 20px;
    }
    .auto-style20 {
        height: 20px;
    }
    .auto-style22 {
        width: 676px;
        text-align: right;
        height: 20px;
    }
        .auto-style23 {
            width: 666px;
        }
        .auto-style25 {
            width: 666px;
            text-align: right;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="auto-style12">
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">아이디</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">비밀번호</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="비밀번호를 입력해주세요"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="확인" Width="55px" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="auto-style13">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">이름 : </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">아이디 :</td>
                    <td class="auto-style20">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">비밀번호 : </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="비밀번호 변경" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">이메일 : </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">성별 : </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Button ID="Button2" runat="server" Text="Home으로" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table class="auto-style13">
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style25">변경하고싶은 비밀번호</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="비밀번호를 입력하세요"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">다시한번 더 입력</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="정확히 입력해주세요"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="변경하기" />
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</p>
</asp:Content>

