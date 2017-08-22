<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("id");

	//자바빈즈 미구현 (MemberDAO, MemberVO)
	//2017.08.21 13:39
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
		<hr width="80%">
			<h2>회원 수정</h2>
		<hr width="80%">
		<br/>
		<form action="Update.jsp" method="post">
			<input type="hidden" name="id" value="${ param.id }"/>
			<table width="80%" border="1">
				<tr>
					<th width="25%">아이디</th>
					<td>${ param.id }</td>
				</tr>
				<tr>
					<th width="25%">이름</th>
					<td>
						<input type="text" size="20" name="name" 
						value="<c:out value="${ member.name }"/>"/>
					</td>					
				</tr>
				<tr>
					<th width="25%">비밀번호</th>
					<td>
						<input type="text" size="20" name="password" 
						value="<c:out value="${ member.password }"/>"/>
					</td>
				</tr>
				<tr>
					<th width="25%">이메일</th>
					<td>
						<input type="text" size="20" name="email_id" 
						value="<c:out value="${ member.email_id }"/>"/>
						@
						<input type="text" size="20" name="email_domain" 
						value="<c:out value="${ member.email_domain }"/>"/>
					</td>
				</tr>
				<tr>
					<th width="25%">핸드폰</th>
					<td>
						<input type="text" size="10" name="tel1" 
						value="<c:out value="${ member.tel1 }"/>"/>
						-
						<input type="text" size="10" name="tel2" 
						value="<c:out value="${ member.tel2 }"/>"/>
						-
						<input type="text" size="10" name="tel3" 
						value="<c:out value="${ member.tel3 }"/>"/>
					</td>
				</tr>
				<tr>
					<th width="25%">우편번호</th>
					<td>
						<input type="text" size="5" name="post1" value="<c:out value="${ member.post }"/>"/> -
						<input type="text" size="5" name="post2" value="<c:out value="${ member.post }"/>"/>
					</td>
				</tr>
				<tr>
					<th rowspan="2" width="25%">전체주소</th>
					<td>
						<input type="text" size="60" name="basic_addr"
						value="<c:out value="${ member.basic_addr }"/>"/>
					</td>
				</tr>
				<tr>					
					<td>
						<input type="text" size="60" name="detail_addr"
						value="<c:out value="${ member.detail_addr }"/>"/>
					</td>
				</tr>
				<tr>
					<th width="25%">등급</th>
					<td>
						<input type="text" size="10" name="type" value="<c:out value="${ member.type }"/>"/>
					</td>
				</tr>
			</table>
			<br/>
			<input type="submit" value="수 정"/>&nbsp;
			<input type="button" value="목록으로 이동"
				onclick="location.href='UserList.jsp'"/>
		</form>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>







