using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ㅁㄴㄻㄹ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        if (Session["User"] != null)
        {
            Response.Redirect("Home.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            string connectionstring = "server=(local)\\SQLExpress; Integrated Security = true; database=userdb";
            SqlConnection conn = new SqlConnection(connectionstring);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT id FROM USERDB WHERE Email ='" + TextBox1.Text + "'";

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                Label4.Text = "당신의 아이디는 " +reader["id"].ToString() + "입니다.";
                Session["findid"] = reader["id"].ToString();
                MultiView1.ActiveViewIndex = 3;
            }
            else
            {
                Label4.Text = "존재하는 아이디가 없습니다.<br>이메일을 정확히 입력해주세요.";
                MultiView1.ActiveViewIndex = 3;
            }
            conn.Close();
            MultiView1.ActiveViewIndex = 3;
            
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            

            string connectionstring = "server=(local)\\SQLExpress; Integrated Security = true; database = userdb";
            SqlConnection conn = new SqlConnection(connectionstring);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM USERDB WHERE id = '" + TextBox2.Text + "' AND Email= '" + TextBox3.Text + "'";

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                Label2.Text = "비밀번호는 " + reader["Password"].ToString() + " 입니다.";
            }
            else
            {
                Label2.Text = "이메일 또는 아이디를 정확히 입력해주세요.";
            }
            conn.Close();
            MultiView1.ActiveViewIndex = 4;
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string str;
        str = string.Format("({0},{1})", e.X, e.Y);
        if (e.X < 740)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else if(740 < e.X && e.X < 1440)
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        if (Session["findid"] != null)
        TextBox2.Text = Session["findid"].ToString();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
}