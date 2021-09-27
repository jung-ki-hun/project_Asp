using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string connectionString = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            string strSql = "UPDATE tblboard SET readcount=readcount+1 WHERE num =" + Request["No"];

            SqlCommand cmd = new SqlCommand(strSql, conn);
            cmd.ExecuteNonQuery();

            strSql = "SELECT * FROM tblboard WHERE num =" + Request["No"];
            cmd = new SqlCommand(strSql, conn);
            SqlDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                Label2.Text = read["name"].ToString();
                Label3.Text = read["title"].ToString();
                Label4.Text = read["type"].ToString();
                TextBox2.Text = read["contents"].ToString();
                Label5.Text = read["readcount"].ToString();
                Label8.Text = read["refer"].ToString();
                Label7.Text =read["depth"].ToString();
                Label6.Text = read["pos"].ToString();
            }
            read.Close();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/List.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Write.aspx?Action=Reply&No=" + Request["No"] + "&refer=" + Label8.Text + "&depth=" + Label7.Text + "&pos=" + Label6.Text);
    }
}