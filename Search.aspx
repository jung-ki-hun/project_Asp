<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  DataTextField="programming" DataValueField="programming" DataSourceID="SqlDataSource1">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" SelectCommand="SELECT DISTINCT [programming] FROM [search]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="검색" OnClick="Button1_Click" style="margin-top: 0px" />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="343px" ReadOnly="True" TextMode="MultiLine" ValidateRequestMode="Disabled" Width="1438px" Enabled="False"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

