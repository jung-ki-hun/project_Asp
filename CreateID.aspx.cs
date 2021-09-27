using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CreateID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"] != null)
        {
            Response.Redirect("Home.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            
            string connectionstring = "server=(local)\\SQLExpress; Integrated Security=true; database=userdb";
            SqlConnection conn = new SqlConnection(connectionstring);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            if(RadioButton1.Checked == true)
            {
                cmd.CommandText = "INSERT INTO userdb (name, id, Password, Email, sex) VALUES( '"
                + TextBox1.Text + "', '"
                + TextBox2.Text + "', '"
                + TextBox3.Text + "', '"
                + TextBox4.Text + "', '"
                + "M" + "')";
            }
            else
            {
                cmd.CommandText = "INSERT INTO userdb (name, id, Password, Email, sex) VALUES( '"
                + TextBox1.Text + "', '"
                + TextBox2.Text + "', '"
                + TextBox3.Text + "', '"
                + TextBox4.Text + "', '"
                + "F" + "')";
            }
            
            conn.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            conn.Close();
            if(rowsAffected == 1)
            {
                Session["findid"] = TextBox2.Text;
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "회원가입을 완료하지 못했습니다. 다시한번 확인해주세요.";
            }
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
        }
    }
}