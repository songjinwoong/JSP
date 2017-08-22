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
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</div>
	<div id="content" align="center">
		<hr width="80%">
			<h2>게시판 수정 폼</h2>
		<hr width="80%">
		<br/><br/>
		
		<form action="/mission_web/update.do" method="post">
			<input type="hidden" name="no" value="${ param.no }" />
			<table width="80%" border="1">
				<tr>
					<th width="25%" >번호</th>
					<td>${ param.no }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" size="70" name="title"
							value="<c:out value="${ board.title }"/>" /> 
					</td>
				</tr>
				<tr>
					<th>작성자</th>
						<td>
							${ board.writer }
						</td>					
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="7" cols="73" name="content"
								value="<c:out value="${ board.content }" />" ></textarea>
					</td>
				</tr>
				<tr>
					<th rowspan="2">첨부파일</th>
					<td>
						<input type="file" name="attachFile" size="40" 
							value="<c:out value="${ board.title }"/>"/>
					</td>
				</tr>
			</table>
			<br/><br/>
			<input type="submit" value="수 정" />
			&nbsp;
			<input type="button" value="목록으로 이동"
				onclick="location.href='/mission_web/list.do'"/>
		</form>
	</div>
	<div id="bottom" align="center" >
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>









