<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email_id = request.getParameter("email_id");
	String email_domain = request.getParameter("email_domain");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String post1 = request.getParameter("post1");
	String post2 = request.getParameter("post2");
	String basic_addr = request.getParameter("basic_addr");
	String detail_addr = request.getParameter("detail_addr");
	String type = request.getParameter("type");
	
	//�ڹٺ��� �̱��� (MemberDAO, MemberVO)
	//2017.08.21 14:21
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
	<div id="header" align="center">
		<br/>
		<h2>ȸ�� ��� [${ userVO.id }]ȸ���� ������ �����Ǿ����ϴ�.</h2>
		
		<a href="UserList.jsp">������� �̵�</a>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>






