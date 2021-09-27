using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["User"] != null)
        {
            Response.Redirect("Home.aspx");
        }
        if (Session["findid"] != null)
        {
            TextBox3.Text = Session["findid"].ToString();
            Session["findid"] = null;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e) //로그인하기 버튼
    {
        try
        {
            string connectionString = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
            SqlConnection conn = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * FROM userdb WHERE id  = '"+TextBox3.Text+"'AND Password ='"+TextBox2.Text +"'";
            
            
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                Session["User"] = TextBox3.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label2.Text = "아이디 또는 비밀번호가 잘못되었습니다.";
                TextBox3.Text = "";
            }
            conn.Close();
            
        }
        catch (Exception ee)
        {
            TextBox3.Text = ee.Message;
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e) // 회원가입하기 버튼으로 이동
    {
        Response.Redirect("CreateID.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e) // ID/PW 찾기로 이동하기
    {
        Response.Redirect("FindIDPW.aspx");
    }
}