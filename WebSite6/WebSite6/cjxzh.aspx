<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cjxzh.aspx.cs" Inherits="cjxzh" %>

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
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="返回主界面" />
            <br />
            <br />
            <asp:Label ID="id" runat="server" Text="账号"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="账号不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="密码"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="确认密码"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="使用人"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="使用者姓名不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
              <asp:Button ID="Button4" runat="server" Text="创建账号" style="margin-left: 230px;text-shadow:0 2px 2px rgb(128, 128, 128);-webkit-border-radius:5em;-moz-border-radius:5em;
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
