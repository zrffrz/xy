using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["TextBox1"].ToString();
        Label4.Text = Session["user"].ToString();
    }

    protected void Label3_textchange(object sender, EventArgs e)
    {

    }

    protected void Label4_textchange(object sender, EventArgs e)
    {

    }
}