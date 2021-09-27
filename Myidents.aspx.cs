using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Myidents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            TextBox1.Text = Session["User"].ToString();
            Label2.Text = "내 정보확인창입니다.<br>비밀번호를 입력해주세요.";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connect = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
        SqlConnection conn = new SqlConnection(connect);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "Select * From userdb WHERE id='" + TextBox1.Text + "'AND Password ='" + TextBox2.Text + "'";

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        if (reader.HasRows)
        {
            MultiView1.ActiveViewIndex = 1;
            Label3.Text = reader["name"].ToString();
            Label4.Text = reader["id"].ToString();
            Label5.Text = reader["Password"].ToString();
            Label6.Text = reader["Email"].ToString();
            Label7.Text = reader["name"].ToString() + "님의 정보입니다.";
            Label8.Text = reader["sex"].ToString();
        }
        else
        {
            Label2.Text = "비밀번호를 입력해주세요.<br>비밀번호의 입력이 잘못되었습니다.";
        }
        conn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        Label9.Text = Session["User"].ToString() + "님의 비밀번호 변경창입니다. ";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string connect = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
        SqlConnection conn = new SqlConnection(connect);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "DELETE From userdb WHERE id='" + TextBox1.Text + "' ;INSERT INTO userdb (name, id, Password, Email, sex) VALUES ('"
                 + Label3.Text + "', '"
                 + Label4.Text + "', '"
                 + TextBox4.Text + "', '"
                 + Label6.Text + "', '"
                 + Label8.Text + "')"; 

        conn.Open();
        int rowsAffected = cmd.ExecuteNonQuery();
        conn.Close();

        Label9.Text = Session["User"].ToString() + "님의 비밀번호 변경창입니다.<br>"+rowsAffected;
        Response.Redirect("Myidents.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}