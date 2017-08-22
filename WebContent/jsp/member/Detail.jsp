<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("id");

	//자바빈즈 미구현 (MemberDAO, MemberVO)
	//2017.08.21 13:37
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
			<h2>회원 상세</h2>
		<hr width="80%">
		
				
		<table width="50%" border="1">
			<tr>
				<th width="25%">아이디</th>
				<td><c:out value="${ param.id }" /></td>
			</tr>
			<tr>
				<th width="25%">이름</th>
				<td><c:out value="${ member.name }" /></td>
			</tr>
			<tr>
				<th width="25%">비밀번호</th>
				<td><c:out value="${ member.password }" /></td>
			</tr>
			<tr>
				<th width="25%">이메일</th>
				<td>${ member.email_id }@${ member.email_domain }</td>
			</tr>
			<tr>
				<th width="25%">핸드폰</th>
				<td>${ member.tel1 }
				-${ member.tel2 }
				-${ member.tel3 }</td>
			</tr>
			<tr>
				<th width="25%">우편번호</th>
				<td>(우)${ member.post1 }-${ member.post2 }</td>
			</tr>
			<tr>
				<th rowspan="2" width="25%">전체주소</th>
				<td>${ member.basic_addr }</td>
			</tr>
			<tr>				
				<td>${ member.detail_addr }</td>
			</tr>
			<tr>
				<th width="25%">등급</th>
				<td>${ member.type }</td>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<td>${ member.regDate }</td>
			</tr>
		</table>
		<br/>
		<input type="button" value="수정 및 권한" 
		onclick="location.href='UpdateForm.jsp?id=${ param.id }'"/>
		<input type="button" value="강제 삭제"
		onclick="location.href='Delete.jsp?id=${ param.id }'"/>
		<input type="button" value="목록으로 이동"
		onclick="location.href='UserList.jsp'"/>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>






