<%-- 
    Document   : 视频列表
    Created on : 2014-1-10
    Author     : Louxuezheng
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="vehicle" tagdir="/WEB-INF/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/public/css/jquery.mobile-1.3.2.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/public/css/slide.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/public/css/menu.css" />" type="text/css">
<script src="<c:url value="/public/js/jquery.js"/>" type="text/javascript"> </script>
<script src="<c:url value="/public/js/menu.js"/>" type="text/javascript"> </script>
<script src="<c:url value="/public/js/jquery.mobile-1.3.2.js"/>" type="text/javascript"> </script>
<script src="<c:url value="/public/js/jquery.slides.js"/>" type="text/javascript"> </script>
<title>${topic.topicTitle}</title>
</head>
<body>
<div data-role="page" data-theme="a" id="demo-page" >
	<div id="header" data-role="header" data-position="fixed">
		<%@ include file="menu.jsp" %>   
			<h1 style="margin-top: 10px;margin-bottom:-5px">${topic.topicTitle}</h1>
	</div>
	<div data-role="content" class="my-page">
		<ul data-role="listview" data-inset="true">
			<c:forEach var="comment" items="${pagedComment.result}">
			 <li>
			 <div class="user">
			 	<span class="name_mobile">${comment.user.userName}</span>
			 	<span class="date">${comment.createTime}</span>
			 </div>
			 <div class="content">${comment.commentText}</div>
				<!-- <td width="20%">
				用户：${comment.user.userName}<br>
				时间：<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${comment.createTime}"/></td>
				<td>${comment.commentText}</td>-->
			 </li>
			</c:forEach>
		</ul>
	</div>
	<div data-role="footer" class="ui-bar">
		<vehicle:PageBar 
		  pageUrl="/board/listTopicComments-${topic.topicId}.html"
		  pageAttrKey="pagedComment"/>
	</div>
</div>
<!-- <table border="1px" width="100%">
	<c:forEach var="comment" items="${pagedComment.result}">
		<tr>
			<td width="20%">
			用户：${comment.user.userName}<br>
			时间：<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${comment.createTime}"/></td>
			<td>${comment.commentText}</td>
		</tr>
	</c:forEach>
</table> -->
<!--  
	<script>
	   function mySubmit(){
	      with(document){
	         var postTitle = getElementById("comment.postTitle");
	         if(postTitle.value != null && postTitle.value.length > 50){
	            alert("帖子标题最大长度不能超过50个字符，请调整.");
	            postTitle.focus();
	            return false;
	         }
	          
	         var postText = getElementById("comment.commentText");
	         if(postText.value == null || postText.value.length < 10){
	            alert("回复帖子内容不能小于10个字符。");
	            postText.focus();
	            return false;
	         }
	           
	         return true;
	      }
	      
	   }
	</script>			   
<form action="<c:url value="/board/addComment.html"/>" method="post" onsubmit="return mySubmit()">
<table border="1px" width="100%">
	<tr>
		<td width="20%">标题</td>
		<td width="80%"><input type="text" name="commentTitle" style="width:100%" /></td>
	</tr>
	<tr>
		<td width="20%">内容</td>
		<td width="80%"><textarea style="width:100%;height:100px"  name="commentText"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
		   <input type="submit" value="保存">
		   <input type="reset" value="重置">
		   <input type="hidden" name="boardId" value="${topic.boardId}"/>
		   <input type="hidden" name="topic.topicId" value="${topic.topicId}"/>
		</td>
	</tr>
</table>
</form>
-->
</body>
</html>

