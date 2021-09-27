using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class List : System.Web.UI.Page
{
    string strSql = "SELECT [num], [name], [title],[type] ,[writedata], [readcount], [depth], [refer],[pos] FROM [tblboard] ORDER BY [refer] DESC, [pos]";
    private void ListDisplay()
    {
        SqlDataSource1.SelectCommand = strSql;
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        ListDisplay();
    }
  

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Write.aspx?Action=Write");
    }
    public string SetSpace(int depth)
    {
        if (depth == 0)
        {
            return " ";
        }
        string strSpace = "";
        for (int i = 0; i < depth; i++)
        {
            strSpace += "&nbsp;&nbsp;Re:";
        }
        return strSpace;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        strSql = "SELECT [num], [name], [title], [writedata], [readcount], [depth], [refer],[pos] FROM [tblboard]  WHERE " 
            + DropDownList1.SelectedValue +
            " LIKE '%" + TextBox2.Text + "%' ORDER BY [refer] DESC, [pos]";
        ListDisplay(); 
    }
}