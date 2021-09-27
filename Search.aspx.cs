using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        string connectionString = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        string strSql = "SELECT * FROM [search]  WHERE programming ='" +
            DropDownList1.SelectedValue + "' AND"
            + " title LIKE '%" + TextBox1.Text + "%'";
        SqlCommand cmd = new SqlCommand(strSql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            TextBox2.Text += reader["title"] + "\n\n" + reader["contents"].ToString()+ "\n\n\n";
        }
        reader.Close();
        conn.Close();

    }


}