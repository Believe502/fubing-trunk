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
<script type="text/javascript"
	src="static/public/js/frontJs/transport.js"></script>
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
		<div class="regtitle">用户注册</div>
		<div class="usBox_2 f_l clearfix">
			<form action="user.php" method="post" name="formUser"
				onsubmit="return register();">
				<table width="100%" border="0" align="left" cellpadding="5"
					cellspacing="3">
					<tr>
						<td width="13%" align="right">用户名</td>
						<td width="87%"><input name="username" type="text" size="25"
							id="username" onblur="is_registered(this.value);" class="inputBg" />
							<span id="username_notice" style="color:#FF0000"> *</span></td>
					</tr>
					<tr>
						<td align="right">email</td>
						<td><input name="email" type="text" size="25" id="email"
							onblur="checkEmail(this.value);" class="inputBg" /> <span
							id="email_notice" style="color:#FF0000"> *</span></td>
					</tr>
					<tr>
						<td align="right">密码</td>
						<td><input name="password" type="password" id="password1"
							onblur="check_password(this.value);"
							onkeyup="checkIntensity(this.value)" class="inputBg"
							style="width:179px;" /> <span style="color:#FF0000"
							id="password_notice"> *</span></td>
					</tr>
					<tr>
						<td align="right">密码强度</td>
						<td>
							<table width="145" border="0" cellspacing="0" cellpadding="1">
								<tr align="center">
									<td width="33%" id="pwd_lower">弱</td>
									<td width="33%" id="pwd_middle">中</td>
									<td width="33%" id="pwd_high">强</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="right">确认密码</td>
						<td><input name="confirm_password" type="password"
							id="conform_password"
							onblur="check_conform_password(this.value);" class="inputBg"
							style="width:179px;" /> <span style="color:#FF0000"
							id="conform_password_notice"> *</span></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><label> <input name="agreement" type="checkbox"
								value="1" checked="checked" /> 我已看过并接受《<a
								href="article.php?cat_id=-1" style="color:blue" target="_blank">用户协议</a>》
						</label></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="left"><input name="act" type="hidden"
							value="act_register"> <input type="hidden"
								name="back_act" value="" /> <input name="Submit" type="submit"
								value="" class="us_Submit_reg"></td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="actionSub"><a href="user.php?act=login">我已有账号，我要登录</a><br />
							<a href="user.php?act=get_password">您忘记密码了吗？</a></td>
					</tr>
				</table>
			</form>
		</div>

		<div class="usTxt" style="padding-top:60px; padding-bottom:60px;">
			<strong>如果您是会员，请登录</strong> <br> <strong class="f4">友情提示：</strong><br>
					您已经有本站账户请登录 <br><br> <a href="user.php?act=login"><img
								src="picture/bnt_ur_log.gif"></a>
		</div>


	</div>



	<div class="blank"></div>

	<!-- 页面底部引用 begin -->
	<jsp:include page="footer.jsp" />
	<!-- 页面底部引用 end -->

</body>
</html>
