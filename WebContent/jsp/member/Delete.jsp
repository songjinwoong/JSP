<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("id");

	//�ڹٺ��� �̱��� (MemberDAO, MemberVO)
	//2017.08.21. 14:25
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/mission_web/css/layout.css" />
<link rel="stylesheet" href="/mission_web/css/board.css" />
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</div>
	<div id="content" align="center">
		<br/>
		<h2>[<%= id %>]���̵� ������ ���� �����Ǿ����ϴ�.</h2>
		<a href="UserList.jsp">������� �̵�</a>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>






