<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cjxyd.aspx.cs" Inherits="cjxyd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
<body>
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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回主界面" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="新建学员队名:学员"></asp:Label>
            <asp:TextBox ID="xydm" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="队（例：学员三十七队，就填写三十七。）"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="xydm" ErrorMessage="学员队编号不能为空" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="ts" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学员信息化管理系统ConnectionString2 %>" SelectCommand="SELECT [zh], [mm], [syz], [xyd] FROM [zhgl]"></asp:SqlDataSource>
            <br />
            <strong>
              <asp:Button ID="sjdr" runat="server" Text="数据导入" style="margin-left: 230px;text-shadow:0 2px 2px rgb(128, 128, 128);-webkit-border-radius:5em;-moz-border-radius:5em;
border-radius: .5em;
background-image:url(第.jpg);
-webkit-box-shadow:0 1px 2px rgb(128, 128, 128);
-moz-box-shadow:0 1px 2px rgb(128, 128, 128);
box-shadow:0 1px 1px rgb(128, 128, 128);

" Height="36px" Width="140px" ForeColor="White" CssClass="auto-style3" OnClick="sjdr_Click"/>
                <br />
                </strong>
            <br />
            <br />
            <strong>
              <asp:Button ID="cj" runat="server" Text="创建学员队" style="margin-left: 230px;text-shadow:0 2px 2px rgb(128, 128, 128);-webkit-border-radius:5em;-moz-border-radius:5em;
border-radius: .5em;
background-image:url(第.jpg);
-webkit-box-shadow:0 1px 2px rgb(128, 128, 128);
-moz-box-shadow:0 1px 2px rgb(128, 128, 128);
box-shadow:0 1px 1px rgb(128, 128, 128);

" Height="36px" Width="140px" ForeColor="White" CssClass="auto-style3" OnClick="cj_Click"/>
                <br />
                </strong>
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
            </div>
    </form>
</body>
</html>
