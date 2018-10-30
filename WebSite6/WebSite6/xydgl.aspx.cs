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


public partial class xydgl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button5_Click(object sender, EventArgs e)
    {
        string SZ = xydm.Text;
        string DM = "学员" + SZ + "队";
        SqlConnection conn = new SqlConnection("Data Source=USER-20160719DB\\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456");
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into xyd (xyd) values('" + DM + "')", conn);
        SqlCommand sel = new SqlCommand("select * from xyd where xyd='" + DM + "' ", conn);
        SqlDataReader sdr = sel.ExecuteReader();
        if (sdr.HasRows)
        {
            ts.Text = "已存在该学员队";
        }
        else
        {
            cmd.ExecuteNonQuery(); //执行语句            
            MessageBox.Show("创建学员队成功", "提示");
           
        }
        conn.Close();
        cmd = null;
        conn.Dispose(); //释放对象   
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Server.Transfer("cjxzh.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default3.aspx");
    }
}