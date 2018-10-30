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
public partial class 登陆界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = zh.Value;
        string password = mm.Value;
       

            SqlConnection conn = new SqlConnection("Data Source=USER-20160719DB\\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456");
             conn.Open();
              SqlCommand cmd = new SqlCommand("select * from zhgl where zh='" + id + "' and mm='" + password + "'", conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                DataSet ds = new DataSet();
                sdr.Read();

        if (sdr.HasRows)
        {
            int power = (int)sdr["qx"];
            string user = (string)sdr["syz"];
            if (power == 1)
            {

                Session["TextBox1"] = id;
                Session["user"] = user;
                Server.Transfer("Default3.aspx");

            }
            if (power == 2)
            {
                Session["TextBox1"] = id;
                Session["user"] = user;
                Server.Transfer("Default.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('用户名或密码错误')</script>");
            conn.Close();


        }
            

      }
 
}

