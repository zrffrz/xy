<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>主界面</title>
    <style type="text/css">
        .auto-style1 {
            height: 155px;
            width: 1100px;
        }
        .auto-style3 {
            font-size: large;
            font-weight: bold;
        }
        </style>
    </head>
<body style="width: 1955px">
    <form id="form1" runat="server">
    <div style=" background:url(真正的标题4.png);margin:0 auto;" class="auto-style1">   
          <br />
          <asp:Label ID="Label1" runat="server" Text="用户名：" style="margin-left: 945px;"></asp:Label>
          <asp:Label ID="Label3" runat="server"></asp:Label>
          <br />
          <br />
        <asp:Label ID="Label2" runat="server" Text="姓名：" style="margin-left: 945px;"></asp:Label>
          <asp:Label ID="Label4" runat="server"></asp:Label>
          <br />
             <br />
          <strong>
            
          </strong>
          </div> 
        <div style="background:url(一级管理员界面.png) ;height: 800px; width: 1100px;margin:0 auto;">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学员信息化管理系统ConnectionString2 %>" SelectCommand="SELECT [zh], [mm], [syz], [xyd] FROM [zhgl]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="zh" DataSourceID="SqlDataSource1" Height="248px" Width="542px">
                <Columns>
                    <asp:BoundField DataField="zh" HeaderText="账号" ReadOnly="True" SortExpression="zh" />
                    <asp:BoundField DataField="syz" HeaderText="使用者" SortExpression="syz" />
                    <asp:BoundField DataField="xyd" HeaderText="学员队" SortExpression="xyd" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
              <asp:Button ID="Button4" runat="server" Text="学员队管理" style="margin-left: 230px;text-shadow:0 2px 2px rgb(128, 128, 128);-webkit-border-radius:5em;-moz-border-radius:5em;
border-radius: .5em;
background-image:url(第.jpg);
-webkit-box-shadow:0 1px 2px rgb(128, 128, 128);
-moz-box-shadow:0 1px 2px rgb(128, 128, 128);
box-shadow:0 1px 1px rgb(128, 128, 128);

" Height="36px" Width="140px" ForeColor="White" CssClass="auto-style3" OnClick="Button4_Click"/>
              <asp:Button ID="jxqdgl" runat="server" Text="教学区队管理" style="margin-left: 230px;text-shadow:0 2px 2px rgb(128, 128, 128);-webkit-border-radius:5em;-moz-border-radius:5em;
border-radius: .5em;
background-image:url(第.jpg);
-webkit-box-shadow:0 1px 2px rgb(128, 128, 128);
-moz-box-shadow:0 1px 2px rgb(128, 128, 128);
box-shadow:0 1px 1px rgb(128, 128, 128);

" Height="36px" Width="140px" ForeColor="White" CssClass="auto-style3" OnClick="Button4_Click"/>
                </strong>
            </div>
    </form>
    </body>
</html>