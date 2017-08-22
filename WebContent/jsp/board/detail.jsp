<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/mission_web/css/layout.css" />
<link rel="stylesheet" href="/mission_web/css/board.css" />
<script>
	function doAction(type) {
		switch(type) {
		case 'U':
			if(comfirm("수정하시겠습니까?"))
				location.href="/mission_web/updateForm.do?no=${ param.no }";
			break;
		case 'D':
			if(comfirm("삭제하시겠습니까?"))
				location.href="/mission_web/delete.do?no=${ param.no }";
			break;
		case 'L':
			if(comfirm("목록으로 돌아가시겠습니까?"))
				location.href="/mission_web/list.do";
			break;
		}
	}
</script>
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</div>
	<div id="content" align="center">
		<hr width="80%">
			<h2>게시물 상세</h2>
		<hr width="80%">
		<br/><br/>
		<table width="80%" border="1">
			<tr>
				<th width="25%"></th>
				<!-- no 변수를 받아오기 때문에 아래와 같이 출력(사용) 가능! -->
				<!-- param => 내장 객체 -->
				<td>${ param.no }</td>
			</tr>
			<tr>				
				<th width="25%">제목</th>
				<td>
					<!-- out태그를 사용하는 이유 -->
					<!-- 링크 걸어놓은 것을 막을 수 있다. -->			
					<c:out value="${ board.content }" />
				</td>								
			</tr>
			<tr>
				<th width="25%">글쓴이</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<td><c:out value="${ board.content }"/></td>
			</tr>
			<tr>
				<th width="25%">조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<td>${ board.regDate }</td>
			</tr>
			<tr>
				<th width="25%">첨부파일</th>
				<td>
					<c:forEach var="file" items="${ fileList }" >
						<a target="blank" href="/mission_web/upload/${ file.fileSaveName }" 
								download="${ file.fileOriName }">
						<c:out value="${ file.fileOriName }" />
						</a>
						&nbsp;(${ file.fileSize } byte)
					</c:forEach>
				</td>
			</tr>
		</table>
		<br/><br/>
		<input type="button" value="수정" onclick="doAction('U')"/>
		<input type="button" value="삭제" onclick="doAction('D')"/>
		<input type="button" value="목록" onclick="doAction('L')"/>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>









