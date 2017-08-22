<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/mission_web/css/layout.css" />
<link rel="stylesheet" href="/mission_web/css/board.css" />
<script type="text/javascript">
	function isNull(obj, msg) {
		if(obj.value == "") {
			alert(msg);
			obj.focus();
			return true;
		}
	}
	
	function doAction() {
		var f = document.lForm;
		if(isNull(f.id, '아이디를 입력해주세요!')) {
			return false;
		}
		if(isNull(f.password, '비밀번호를 입력해주세요!')) {
			return false;
		}
	}
</script>
</head>
<body>
	<div id="header">
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</div>
	<div id="content" align="center">
		<br/>
		<hr width="80%" />
		<h2>로그인</h2>
		<hr width="80%" />
		<br/><br/>
		
		<form action="/mission_web/loginProcess.do" 
			method="post" name="lForm" onsubmit="return doAction()">
			<table width="40%">
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" size="20" /></td>
				</tr>
				<tr>
					<th>PASSWORD</th>
					<td><input type="text" name="password" size="20"/></td>
				</tr>
			</table>
			<br/>
			<input type="submit" value="로그인" />
		</form>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>








