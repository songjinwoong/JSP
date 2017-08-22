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
			<h2>�Խ��� ��� ��</h2>
		<hr width="80%" /> 
		<br/>
		
		<!-- 
			method	get		������� ������ get�̰� url�� ���ư��� ������ ���δ�.
							form�� ������ ��� ȣ������ get���
							<a>�±״� get ���
					post	���ư��� ������ �Ⱥ���
							������ ���ư��� ���� �ݵ�� post ���
							encoding�� �ѱۿ� ���� decoding��� ����
		 -->
		 <form name="wForm" action="/mission_web/write.do"
		 		method="post" enctype="multipart/form-data"
		 		onsubmit="return doWrite()">
<%-- 		 	<input type="hidden" name="writer" value="${ userVO.id }" /> --%>
				<table>
					<tr>
						<th width="25%" >����</th>
						<td><input type="text" size="80" 
						name="title"/></td>
					</tr>
					<tr>
						<th>�ۼ���</th>
						<td>
						<input type="text" size="20" name="writer" value="${ userVO.id }" readonly="readonly"/>
<%-- 							${ userVO.id } --%>
						</td>
					</tr>
					<tr>
						<th>����</th>
						<%-- �������� �Է¹��� �� �ִ� �±� --%>
						<td><textarea rows="7" cols="80" 
						name="content"></textarea></td>
					</tr>
					<tr>
						<th rowspan="2">÷������</th>
						<td><input type="file" 
						name="attachFile1" size="40"></td>
					</tr>
					<tr>
						<td><input type="file" 
						name="attachFile2" size="40"></td>
					</tr>
				</table>
				<br/><br/>
				<input type="submit" value="�� ��"/>
				&nbsp;
				<input type="button" value="������� �̵�" 
					onclick="doList()" />		 			
		 </form>
	</div>
	<div id="bottom" align="center">
		<%@ include file="/jsp/include/bottom.jsp" %>
	</div>
</body>
</html>








