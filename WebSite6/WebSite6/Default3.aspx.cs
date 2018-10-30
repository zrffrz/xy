using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["TextBox1"].ToString();
        Label4.Text = Session["user"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=USER-20160719DB\\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456");
        
        SqlCommand cmd= new SqlCommand("select * from zhgl", conn);
        conn.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        conn.Close();
        

    }

    protected void Label3_textchange(object sender, EventArgs e)
    {

    }

    protected void Label4_textchange(object sender, EventArgs e)
    {

    }



  

    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("xydgl.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}