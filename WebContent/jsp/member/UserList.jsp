<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/mission_web/css/layout.css" />
<link rel="stylesheet" href="/mission_web/css/board.css" />
<script>
	function doAction(id) {
		<c:choose>
		<c:when test="${ not empty userVO }">
			location.href = "/mission_web/Detail.do?id=" + ${ member.id };
		</c:when>
		<c:otherwise>
			if(confirm('로그인 후 사용가능합니다.\n로그인 페이지로 이동하시겠습니까?'))
					location.href = "/mission_web/login.do";
		</c:otherwise>
		</c:choose>
	}
</script>
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</div>
	<div id="content" align="center">
		<hr width="80%">
			<h2>회원 가입자 목록</h2>
		<hr width="80%">
		<br/><br/>
		
		<table width="80%">
			<tr>
				<th width="15%">아이디</th>
				<th width="10%">이름</th>
				<th width="15%">비밀번호</th>
				<th width="20%">폰번호</th>
				<th width="5%">등급</th>
				<th width="10%">등록일</th>
			</tr>
			<c:forEach var="member" items="${ list }">
				<c:if test="${ member.id ne 'admin' }">
					<tr>
						<td align="center">${ member.id }</td>
						<td align="center">
							<a href="javascript:doAction('${ member.id }')">
								<c:out value="${ member.name }"/>								
							</a>
						</td>
						<td align="center">${ member.password }</td>
						<td align="center">${ member.tel1 }-${ member.tel2 }-${ member.tel3 }</td>
						<td align="center">${ member.type }</td>
						<td align="center">${ member.regDate }</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>







