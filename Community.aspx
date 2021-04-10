<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Community.aspx.cs" Inherits="Community" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="글쓰기" Width="134px" />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" Width="852px">
            <ItemTemplate>
                제목 :
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                &nbsp;아이디:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                <br />
                내용:
                <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                <br />
<br />
                <hr />
            </ItemTemplate>
        </asp:DataList>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/userDB.xml"></asp:XmlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

