using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;

public partial class comu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = Session["User"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        if (Request["Action"].CompareTo("Reply") != 0)//답변
        {
            string strSql = "INSERT INTO tblboard(name, title, contents, type, readcount, refer, depth, pos) VALUES ('"
                + TextBox3.Text + "', '"
                + TextBox2.Text + "', '"
                + TextBox4.Text  + "', '"
                + DropDownList1.SelectedValue + "', " 
                + "0,0,0,0)";
            SqlCommand cmd = new SqlCommand(strSql, conn);
            cmd.ExecuteNonQuery();
            strSql = "UPDATE tblboard SET refer=num WHERE refer=0";//번호넘기는거
            cmd = new SqlCommand(strSql, conn);
            cmd.ExecuteNonQuery();
        }
        else//일반
        {
            int iRefer = int.Parse(Request["refer"]);
            int iDepth = int.Parse(Request["depth"]);
            int iPos = int.Parse(Request["pos"]);
            string strSql = "UPDATE tblboard SET pos=pos+1 WHERE refer=" + iRefer + " and pos>." + iPos;
            SqlCommand cmd = new SqlCommand(strSql, conn);
            cmd.ExecuteNonQuery();

            iDepth++;
            iPos++;

            strSql = "INSERT INTO tblboard(name, title, contents, type, readcount, refer, depth, pos) VALUES ('" 
                + TextBox3.Text + "', '" 
                + TextBox2.Text + "', '" 
                + TextBox4.Text + "', '"
                + DropDownList1.SelectedValue +"', " 
                +  "0, " 
                + iRefer + ", " 
                + iDepth + ", " 
                + iPos + ")";

            cmd = new SqlCommand(strSql, conn);
            cmd.ExecuteNonQuery();
        }
        conn.Close();
        Response.Redirect("~/List.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/List.aspx");
    }
}