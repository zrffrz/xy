<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xydgl.aspx.cs" Inherits="xydgl" %>

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
    <div>
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

            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="返回主界面" />

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="zh" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="zh" HeaderText="zh" ReadOnly="True" SortExpression="zh" />
                    <asp:BoundField DataField="xyd" HeaderText="xyd" SortExpression="xyd" />
                    <asp:BoundField DataField="syz" HeaderText="syz" SortExpression="syz" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学员信息化管理系统ConnectionString %>" SelectCommand="SELECT [zh], [xyd], [syz] FROM [zhgl] WHERE ([qx] = @qx)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="qx" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <strong>
                <br />
                </strong>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="Label5" runat="server" Text="学员"></asp:Label>
            &nbsp;<asp:TextBox ID="xydm" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="Label6" runat="server" Text="队  例如（三十七）"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="xydm" ErrorMessage="学员队编号不能为空" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Height="45px" OnClick="Button5_Click" Text="创建" Width="58px" />
            &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="ts" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="创建新的账号" OnClick="Button6_Click" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            

            </div>
    </div>
    </form>
</body>
</html>
