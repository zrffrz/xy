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


public partial class cjxzh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string pass = TextBox2.Text;
        string user = TextBox4.Text;
        string pass_again = TextBox3.Text;
        int power = 2;
        SqlConnection conn = new SqlConnection("Data Source=USER-20160719DB\\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456");
        SqlCommand cmd = new SqlCommand("insert into zhgl (zh,mm,qx,syz) values('" + id + "','" + pass + "','" + power + "','" + user + "') ", conn);
        conn.Open();

        //5、执行sql语句
        if (id != "")
        {
            if (pass != "")
            {
                if (pass == pass_again)
                {
                    if (user != "")
                    {
                        int intres = -1;

                        intres = cmd.ExecuteNonQuery();
                        MessageBox.Show("创建成功", "提示");

                        //6、关闭连接通道

                        conn.Close();
                        Server.Transfer("Default3.aspx");
                    }
                }
            }

        }
        MessageBox.Show("创建失败", "提示");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default3.aspx");
    }
}
