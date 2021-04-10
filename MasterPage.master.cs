using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["User"] != null)
        {
            Label1.Text = Session["User"].ToString() + "님 환영합니다.";
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
        }
        else
        {
            Label1.Text = "";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if(Session["User"] != null)
        {
            Label1.Text = "안전하게 로그아웃 되었습니다.";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Redirect("Myidents.aspx");
        }
    }
}
