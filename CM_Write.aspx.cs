using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class CM_Write : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Home.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string fn = Server.MapPath("~/App_Data/userDB.xml");
        XmlDocument doc = new XmlDocument();
        doc.Load(fn);

        XmlNode root = doc.DocumentElement;
        XmlNode userdbnode = doc.CreateElement("userdb");
        root.AppendChild(userdbnode);

        XmlAttribute title;
        title = doc.CreateAttribute("title");
        title.Value = TextBox1.Text;
        userdbnode.Attributes.Append(title);

        XmlAttribute id;
        id = doc.CreateAttribute("id");
        id.Value = Session["User"].ToString();
        userdbnode.Attributes.Append(id);

        XmlAttribute body;
        body = doc.CreateAttribute("body");
        body.Value = TextBox2.Text;
        userdbnode.Attributes.Append(body);

        doc.Save(fn);
        doc = null;
        Response.Redirect("Community.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Community.aspx");
    }
}