using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Data.OleDb;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Web.Security;
using System.Collections;

public partial class jxqd : System.Web.UI.Page
{
    string strConn = @"Data Source=USER-20160719DB\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)//第一次加载运行
        {
            string j;
            ArrayList arrList1 = new ArrayList();
            for (int i = 1950; i < 2050; i++)
            {
                j = Convert.ToString(i);
                //yearItem = new ListItem(i.ToString(), i.ToString());
                arrList1.Add(j);

            }
            DropDownList2.DataSource = arrList1;
            DropDownList2.DataBind();
        }
    }
 


    protected void cjjxqd_Click(object sender, EventArgs e)
    {

        string qdm = TextBox2.Text;
        string qdbh = TextBox3.Text;
        SqlConnection cn = new SqlConnection(strConn);
        cn.Open();
        SqlCommand ins = new SqlCommand("insert into jxqdzb (qdm,qdbh) values('" + qdm + "','"+qdbh+"')", cn);
        SqlDataReader sdr = ins.ExecuteReader();
        cn.Close();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string tablename;
        string qdm = DropDownList2.SelectedValue;
        SqlConnection conn = new SqlConnection("Data Source=USER-20160719DB\\SQLEXPRESS;Initial Catalog=学员信息化管理系统;Persist Security Info=True;User ID=sa;Password=123456");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from jxqdzb where qdm= '"+qdm+"'", conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        string qdbh = (string)sdr["qdbh"];
        tablename = qdbh + DropDownList2.SelectedValue.ToString() + DropDownList3.SelectedValue.ToString();//表的名字确定区队编号+学年+上下学期

        string sheet = "sheet1";
        string filename = FileUpload1.FileName;              //获取Execle文件名  DateTime日期函数
        string savePath = Server.MapPath(("~\\upfiles\\") + filename);//Server.MapPath 获得虚拟服务器相对路径
        FileUpload1.SaveAs(savePath);
        if (FileUpload1.HasFile == false)//HasFile用来检查FileUpload是否有指定文件
        {
            Response.Write("<script>alert('请您选择Excel文件')</script> ");
            return;
        }
        string IsXls = System.IO.Path.GetExtension(FileUpload1.FileName).ToString().ToLower();//System.IO.Path.GetExtension获得文件的扩展名--可以借鉴一下他的选择格式的方法
        if (IsXls != ".xls")
        {
            Response.Write("<script>alert('只可以选择Excel文件')</script>");
            return;
            
        }
        Transdata(sheet, filename, savePath,tablename);
    }
    public void Transdata(string sheetName, string table, string filenameurl,string tbname)
    {

        string ojbk = "Provider=Microsoft.Jet.OleDb.4.0;" + "data source=" + filenameurl + ";Extended Properties='Excel 8.0; '";
        OleDbConnection conn = new OleDbConnection(ojbk);
        DataSet ds = new DataSet();
        string exclstr = "";
        OleDbDataAdapter odda = null;
        exclstr = string.Format("select * from [{0}$]", sheetName);
        conn.Open();
        odda = new OleDbDataAdapter(exclstr, conn);
        odda.Fill(ds, table);
        conn.Close();
        int rowsnum = ds.Tables[0].Rows.Count;
        if (rowsnum == 0)
        {
            Response.Write("<script>alert('Excel表为空表,无数据!')</script>");   //当Excel表为空时,对用户进行提示
        }
        else
        {
            
            string strSql = string.Format("if not exists(select * from sysobjects where name = '{0}') create table {0}(", tbname);
            foreach (System.Data.DataColumn c in ds.Tables[0].Columns)// Columns 获取属于该表的列的集合。
            {   
                strSql += string.Format("[{0}] varchar(255),", c.ColumnName);
                
            }
            strSql = strSql.Trim(',') + ")";//去掉末项的逗号
            SqlConnection sqlconn = new SqlConnection(strConn);
            sqlconn.Open();
            SqlCommand updata = new SqlCommand(strSql, sqlconn);
              
               updata.ExecuteNonQuery();
                sqlconn.Close();
            
            using (System.Data.SqlClient.SqlBulkCopy bcp = new System.Data.SqlClient.SqlBulkCopy(strConn))
            {
                bcp.SqlRowsCopied += new System.Data.SqlClient.SqlRowsCopiedEventHandler(bcp_SqlRowsCopied);
                bcp.BatchSize = 100;//每次传输的行数        
                bcp.NotifyAfter = 100;//进度提示的行数        
                bcp.DestinationTableName = sheetName;//目标表        
                bcp.WriteToServer(ds.Tables[0]);
            }
            void bcp_SqlRowsCopied(object sender, System.Data.SqlClient.SqlRowsCopiedEventArgs e)
            {
               
            }
        }
        Response.Write("<script>alert('Excle表导入成功!');location='jxqd.aspx'</script>");
    }




    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

   
