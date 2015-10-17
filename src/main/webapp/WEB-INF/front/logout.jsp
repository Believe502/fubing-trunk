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

	<div class="blank"></div>
	<div class="block">
		<div class="box">
			<div class="box_1">
				<h3>
					<span>系统信息</span>
				</h3>
				<div class="boxCenterList RelaArticle" align="center">
					<div style="margin:20px auto;">
						<p style="font-size: 14px; font-weight:bold; color: red;">您已经成功的退出了。</p>
						<div class="blank"></div>
						<p>
							<a href="">返回上一页</a>
						</p>
						<p>
							<a href="index.php">返回首页</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 页面底部引用 begin -->
	<jsp:include page="footer.jsp" />
	<!-- 页面底部引用 end -->

</body>
</html>
