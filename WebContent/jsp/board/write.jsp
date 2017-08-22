<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	alert('글 등록을 완료했습니다.');
	location.href="/mission_web/list.do";
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/mission_web/css/layout.css" />
<link rel="stylesheet" href="/mission_web/css/board.css" />
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp"/> 
	</div>
	<div id="content" align="center">
		<br/><br/>
		<h2>게시판 글 등록을 완료하였습니다.</h2>
		<a href="list.jsp">목록으로 이동</a>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>









