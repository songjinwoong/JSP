<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<hr width="80%" />
			<h2>게시판 목록</h2>
		<hr width="80%" />
		<br/><br/>
		
		<table width="95%">
			<tr>
				<th width="7%">번호</th>
				<th width="40%">제목</th>
				<th width="10%">글쓴이</th>
				<th width="15%">등록일</th>
				<th width="7%">조회수</th>
			</tr>
			<!-- 
				게시판 정보 불러와 출력 기능
				*미구현
				2017.08.19 15:33
			 -->
		</table>
	</div>
	<div id="bottom" align="center" >
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>








