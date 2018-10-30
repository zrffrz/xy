<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录界面.aspx.cs" Inherits="登陆界面" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>登录界面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <style type="text/css">
           .auto-style1 {
               height: 18px;
           }
           .auto-style3 {
               font-size: xx-large;
           }
           .auto-style4 {
               width: 10px;
               height: 10px;
           }
           .auto-style5 {
               font-size: medium;
           }
           .auto-style6 {
               font-weight: bold;
               font-size: medium;
           }
           .auto-style7 {
               width: 338px;
               height: 321px;
           }
           .auto-style8 {
               height: 315px;
               width: 335px;
           }
           .auto-style9 {
               position: relative;
               left: 0px;
               top: 0px;
               height: 217px;
               margin-right: 0px;
           }
           .auto-style10 {
               height: 77px;
               width: 80px;
           }
       </style>
</head>
<body runat="server" style="background-image:url(真正的背景1.png);background-size:cover;background-repeat: no-repeat;background-position:left center; height:600px ; width:1350px">
    <form id="form1" runat="server">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    <div style="background: #fff; min-height: 335px; padding: 10px; margin-left:950px; margin-right: auto; margin-bottom: 0;" class="auto-style7">
        <div style="border: 2px solid #7397D1; min-height: 335px;" class="auto-style8">
            <div style="padding: 15px 0px; text-align: center; " class="auto-style9">
                <img src="图片1.png" alt="" class="auto-style10" /><h2 style="color: #37588B; margin: 10px 0px 35px 0px; }" class="auto-style3">学员队信息化管理系统</h2>
                <input style="padding-left:20px;background-image: url(账号.png); background-repeat: no-repeat; background-position: left center"  placeholder="      账号" required="" class="auto-style1" type="text" id="zh"  runat="server" /><br />
                <br />
                <input style="padding-left:20px;background-image: url(密码.png); background-repeat: no-repeat; background-position: left center" autocomplete="off" placeholder="      密码" required="" class="auto-style1"  type="text"  id="mm" runat="server" /><br />
&nbsp;<div style="float: inherit;text-align:end">
                        <label class="checkbox" style="font-family: Calibri, Arial, sans-serif;top:auto">
                            <strong>
                            <input type="checkbox" name="checkbox" checked="checked" class="auto-style4"style="background-position:left center" /></strong> <span class="auto-style5">记住密码</span></label></div>
         <br/>
                  <div> <asp:Button ID="Button1" runat="server" Style="background-color:dimgray;margin-left:0px; text-shadow: 1px 1px 0 rgba(255,255,255,0.4); text-decoration: none; white-space: nowrap; display: inline-block; vertical-align: baseline; background-repeat: no-repeat; background-position: bottom left; background-image: url(''); background-position: left bottom; background-clip: border-box; -moz-border-radius: 8px; -webkit-border-radius: 8px; border-radius: 8px; -moz-box-shadow: 0 0 1px #fff inset; -webkit-box-shadow: 0 0 1px #fff inset; -webkit-transition: background-position 1s; -moz-transition: background-position 1s; transition: background-position 1s; font-style: normal; font-variant: normal; line-height: normal; font-family: Calibri, Arial, sans-serif;"
                        Text=" 登录"  ForeColor="#FFFFCC" OnClick="Button1_Click" Height="25px" Width="143px" CssClass="auto-style6" /></div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

