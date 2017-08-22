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
		<hr width="80%">
		<h2>회원 가입</h2>
		<hr width="80%">		
		<form action="Create.jsp" method="post" >
			<table width="80%" border="1">
				<tr>
					<th width="23%">아이디</th>
					<td><input type="text" size="20" maxlength="15" name="id"/></td>
				</tr>
				<tr>
					<th width="23%">이름</th>
					<td><input type="text" size="20" maxlength="10" name="name"/></td>
				</tr>
				<tr>
					<th width="23%">비밀번호</th>
					<td><input type="password" size="20" maxlength="15" name="password"/></td>
				</tr>
				<tr>
					<th width="23%">이메일</th>
					<td>
						<input type="text" size="10" 
						maxlength="15" name="email_id"/> @
						<input type="text" size="15" 
						name="email_domain" readonly="readonly"/>
						<select name="email_select" onchange="em">
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="0">직접 입력</option>
						</select>						
					</td>
				</tr>
				<tr>
					<th width="23%">핸드폰</th>
					<td>
						<select name="tel1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="019">019</option>
						</select>
						<input type="text" size="4" maxlength="4" name="tel2"/> -
						<input type="text" size="4" maxlength="4" name="tel3"/> 
					</td>
				</tr>
				<tr>
					<th width="23%">우편 번호</th> 
					<td>(우)
						<input type="text" size="3" maxlength="3" name="post1"/> - 
						<input type="text" size="3"	maxlength="3" name="post2"/>
					</td>
				</tr>
				<tr>
					<th>기본 주소</th>
					<td>
						<textarea rows="1" cols="60" maxlength="50" name="basic_addr"></textarea>
					</td>
				</tr>
				<tr>
					<th>상세 주소</th>
					<td>
						<textarea rows="1" cols="60" maxlength="50" name="detail_addr"></textarea>
					</td>
				</tr>
			</table>
			<br/>
			<input type="submit" value="등 록"/>&nbsp;
			<input type="button" value="목 록" onclick="location.href='UserList.jsp'"/>
		</form>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>








