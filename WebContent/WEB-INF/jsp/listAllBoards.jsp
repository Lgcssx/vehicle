<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>车载系统</title>
<link rel="stylesheet"
	href="<c:url value="/public/css/jquery.mobile-1.3.2.css"/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/public/css/grid-listview.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/public/css/menu.css" />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/public/css/flexslider.css" />" type="text/css">
<script src="<c:url value="/public/js/jquery.js"/>"
	type="text/javascript">
	
</script>
<script src="<c:url value="/public/js/menu.js"/>" type="text/javascript">
	
</script>
<script src="<c:url value="/public/js/jquery.mobile-1.3.2.js"/>"
	type="text/javascript">
	
</script>
<script src="<c:url value="/public/js/jquery.flexslider.js"/>"></script>
<script type="text/javascript" charset="utf-8">
	$(window).load(function() {
		$('.flexslider').flexslider();
	});
</script>
</head>

<body>
	<div data-role="page" data-theme="a" id="demo-page">
		<div id="header" data-role="header" data-position="fixed" data-tap-toggle="false">
			<%@ include file="menu.jsp" %> 
			<h1 style="margin-top: 10px; margin-bottom: -5px">
			<img src="/public/images/title.png"  style="margin-top: -5;"/>
			</h1>
			<a href="/internet_wsn_encianngc.html" data-icon="grid" class="ui-btn-right" rel="external">互联网</a> 
		</div>
		<div data-role="content" class="my-page">
		<div class="flexslider">
				<ul class="slides">
					<li><img src="/data/images/post/1_1.jpg" /></li>
					<li><img src="/data/images/post/1_2.jpg" /></li>
					<li><img src="/data/images/post/1_3.jpg" /></li>
				</ul>
		</div>
		
			<div id="city" class="ui-grid-solo" style="position: relative;">
					<ul data-role="listview" data-inset="true">
						<li><a id="company" href="/company.html" rel="external"> <img
							src="<c:url value="/public/images/icon/company.png"/>">
							<h1>公司简介</h1>
						</a></li>
						<li><a href="/listCitys.html" rel="external"> <img
								src="<c:url value="/public/images/icon/beijing.png"/>">
								<h1>途经城市</h1>
						</a></li>		
						<li id="li"><a href="/video-funny.html" rel="external"> <img
								src="<c:url value="/public/images/icon/video.png"/>">
								<h1>视频</h1>
						</a></li>
						<li><a href="/voice-comic.html" rel="external"> <img
								src="<c:url value="/public/images/icon/voice.png"/>">
								<h1>音乐</h1>
						</a></li>
						<li><a href="http://www.letu.com:3001" rel="external"> <img
								src="<c:url value="/public/images/icon/games.png"/>">
								<h1>游戏室</h1>
						</a></li>
						<!--<li><a href="/listApps.html" rel="external"> <img
								src="<c:url value="/public/images/icon/app.png"/>">
								<h1>应用下载</h1>
						</a></li>  -->
						<li><a href="#popupBasic"  data-rel="popup"> <img
								src="<c:url value="/public/images/icon/app.png"/>">
								<h1>应用下载</h1>
						</a></li> 
					</ul>
			</div>
			<div data-role="popup" id="popupBasic">
				<p>服务暂缓开通<p>
			</div>
		</div>
	</div>
</body>
</html>
