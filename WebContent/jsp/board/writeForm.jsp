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
			<h2>게시판 등록 폼</h2>
		<hr width="80%" /> 
		<br/>
		
		<!-- 
			method	get		명시하지 않으면 get이고 url에 날아가는 정보가 보인다.
							form을 제외한 모든 호출방식은 get방식
							<a>태그는 get 방식
					post	날아가는 정보가 안보임
							내용이 날아가는 경우는 반드시 post 사용
							encoding된 한글에 대한 decoding방식 지원
		 -->
		 <form name="wForm" action="/mission_web/write.do"
		 		method="post" enctype="multipart/form-data"
		 		onsubmit="return doWrite()">
<%-- 		 	<input type="hidden" name="writer" value="${ userVO.id }" /> --%>
				<table>
					<tr>
						<th width="25%" >제목</th>
						<td><input type="text" size="80" 
						name="title"/></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
						<input type="text" size="20" name="writer" value="${ userVO.id }" readonly="readonly"/>
<%-- 							${ userVO.id } --%>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<%-- 여러줄을 입력받을 수 있는 태그 --%>
						<td><textarea rows="7" cols="80" 
						name="content"></textarea></td>
					</tr>
					<tr>
						<th rowspan="2">첨부파일</th>
						<td><input type="file" 
						name="attachFile1" size="40"></td>
					</tr>
					<tr>
						<td><input type="file" 
						name="attachFile2" size="40"></td>
					</tr>
				</table>
				<br/><br/>
				<input type="submit" value="등 록"/>
				&nbsp;
				<input type="button" value="목록으로 이동" 
					onclick="doList()" />		 			
		 </form>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>








