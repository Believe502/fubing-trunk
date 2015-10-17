<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />

<title>用户中心_IT营</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="static/public/css/frontCss/style.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript" src="static/public/js/frontJs/common.js"></script>
<script type="text/javascript" src="static/public/js/frontJs/user.js"></script>
<script type="text/javascript" src="static/public/js/frontJs/transport.js"></script>
</head>
<body>

	<!-- 页面头部引用  begin -->
	<jsp:include page="header.jsp" />
	<!-- 页面头部引用 end -->




	<div class="block box">
		<div id="ur_here">
			<div class="box">
				<div id="ur_here">
					当前位置: <a href=".">首页</a>
					<code>&gt;</code>
					用户中心
				</div>
			</div>
			<div class="blank"></div>
		</div>
	</div>

	<div class="blank"></div>

	<div class="usBox clearfix">
		<div class="logtitle">用户登录</div>
		<div class="usBox_1 f_l">
			<form name="formLogin" action="user.php" method="post"
				onSubmit="return userLogin()">
				<table width="100%" border="0" align="left" cellpadding="3"
					cellspacing="5">
					<tr>
						<td width="20%" align="right">用户名</td>
						<td width="80%"><input name="username" type="text" size="25"
							class="inputBg" /></td>
					</tr>
					<tr>
						<td align="right">密码</td>
						<td><input name="password" type="password" size="15"
							class="inputBg" /></td>
					</tr>
					<tr>
						<td colspan="2" style="text-indent:140px;"><input
							type="checkbox" value="1" name="remember" id="remember" /><label
							for="remember">请保存我这次的登录信息。</label></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="left"><input type="hidden" name="act"
							value="act_login" /> <input type="hidden" name="back_act"
							value="user.php" /> <input type="submit" name="submit" value=""
							class="us_Submit" /></td>
					</tr>
					<tr>
						<td></td>
						<td><a href="user.php?act=qpassword_name" class="f3">密码问题找回密码</a>&nbsp;&nbsp;&nbsp;<a
							href="user.php?act=get_password" class="f3">注册邮件找回密码</a></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="usTxt">
			<strong>如果您不是会员，请注册</strong> <br /> <strong class="f4">友情提示：</strong><br />
			不注册为会员也可在本店购买商品<br /> 但注册之后您可以：<br /> 1. 保存您的个人资料<br /> 2.
			收藏您关注的商品<br /> 3. 享受会员积分制度<br /> 4. 订阅本店商品信息 <br /> <br /> <a
				href="user.php?act=register"><img src="picture/bnt_ur_reg.gif" /></a>
		</div>
	</div>
	<div class="blank"></div>


	<!-- 页面底部引用 begin -->
	<jsp:include page="footer.jsp" />
	<!-- 页面底部引用 end -->


</body>
<script type="text/javascript">
var process_request = "正在处理您的请求...";
var username_empty = "- 用户名不能为空。";
var username_shorter = "- 用户名长度不能少于 3 个字符。";
var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
var password_empty = "- 登录密码不能为空。";
var password_shorter = "- 登录密码不能少于 6 个字符。";
var confirm_password_invalid = "- 两次输入密码不一致";
var email_empty = "- Email 为空";
var email_invalid = "- Email 不是合法的地址";
var agreement = "- 您没有接受协议";
var msn_invalid = "- msn地址不是一个有效的邮件地址";
var qq_invalid = "- QQ号码不是一个有效的号码";
var home_phone_invalid = "- 家庭电话不是一个有效号码";
var office_phone_invalid = "- 办公电话不是一个有效号码";
var mobile_phone_invalid = "- 手机号码不是一个有效号码";
var msg_un_blank = "* 用户名不能为空";
var msg_un_length = "* 用户名最长不得超过7个汉字";
var msg_un_format = "* 用户名含有非法字符";
var msg_un_registered = "* 用户名已经存在,请重新输入";
var msg_can_rg = "* 可以注册";
var msg_email_blank = "* 邮件地址不能为空";
var msg_email_registered = "* 邮箱已存在,请重新输入";
var msg_email_format = "* 邮件地址不合法";
var msg_blank = "不能为空";
var no_select_question = "- 您没有完成密码提示问题的操作";
var passwd_balnk = "- 密码中不能包含空格";
var username_exist = "用户名 %s 已经存在";
</script>
</html>
