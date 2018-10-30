<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jxqd.aspx.cs" Inherits="jxqd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        .auto-style1 {
            height: 155px;
            width: 1100px;
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
            <br />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="qdm" DataValueField="qdm" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="查询" />
            <asp:Label ID="Label9" runat="server" Text="学年"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                 <asp:ListItem ></asp:ListItem>
            

            </asp:DropDownList>
            <asp:Label ID="Label13" runat="server" Text="学期"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
                 <asp:ListItem value="0">上学期</asp:ListItem>
                <asp:ListItem value="1">下学期</asp:ListItem>
            </asp:DropDownList>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="导入" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <strong>
                <br />
                </strong>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="qdm" HeaderText="区队名" SortExpression="qdm" />
                    <asp:BoundField DataField="qdbh" HeaderText="区队编号" SortExpression="qdbh" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学员信息化管理系统ConnectionString %>" SelectCommand="SELECT [qdm], [qdbh] FROM [jxqdzb]"></asp:SqlDataSource>
            <strong>
                <br />
                </strong>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="教学区队名"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="19px"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" Text="教学区队编号"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="cjjxqd" runat="server" OnClick="cjjxqd_Click" Text="创建教学区队" />
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
