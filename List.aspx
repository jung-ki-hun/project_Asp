<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }

        .auto-style12 {
            height: 20px;
            text-align: center;
        }

        .auto-style14 {
            height: 145px;
        }
        .auto-style15 {
            height: 25px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            margin-left: 0px;
        }
        .auto-style18 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
    </p>
    <table class="auto-style18">
        <tr>
            <td class="auto-style12">Programe Compilation</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <div class="auto-style16">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1434px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowSorting="True" CssClass="auto-style17">
                        <Columns>
                            <asp:BoundField DataField="num" HeaderText="No." SortExpression="num" />
                            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                            <asp:TemplateField HeaderText="title" SortExpression="title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# SetSpace((int)Eval("depth")) %>
                                    <a href="<%# "View.aspx?No=" +Eval("num") %>">
                                        <%# Eval("title") %>
                                    </a>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="readcount" HeaderText="readcount" SortExpression="readcount" />
                        </Columns>
                        <EmptyDataTemplate>
                            등록된 게시물이 없습니다!
                        </EmptyDataTemplate>

                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" SelectCommand="SELECT [num], [title], [name], [readcount], [type] FROM [tblboard]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" Text="글쓰기" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="title">제목</asp:ListItem>
                    <asp:ListItem Value="name">작성자</asp:ListItem>
                    <asp:ListItem Value="contents">내용</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="검색" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

