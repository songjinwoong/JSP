<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" width="100%">
	<tr>
		<td rowspan="2" style="width: 145px; height: 45px;" align="center">
			<a href="/mission_web">
				<img src="/mission_web/image/home.png" style="border: 0px;" 
				width="200px" height="100px"/>
			</a>
		</td>
		<th align="right">
				<!-- 
					userVO Model �̱���
					2017. 08. 19 13:17
				 -->
<%-- 			<c:if test="${ note empty userVO }"> --%>
<%-- 				[${ userVO } ������ �α��� ���Դϴ�.] --%>
<%-- 			</c:if> --%>
			<a>���ã��</a>
		</th>
	</tr>
	<tr align="center">
		<th class="color">
<%-- 		<c:if test="${ userVO.type eq 'S'}"> --%>
		<a href="/mission_web/jsp/member/UserList.jsp">ȸ������</a>||
<%-- 		</c:if> --%>
		<a href="/mission_web/list.do">�Խ���</a>||
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${ empty userVO }"> --%>
			<a href="/mission_web/jsp/member/CreateForm.jsp">ȸ������</a>||
			<a href="/mission_web/login.do">�α���</a>||
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
			����������||
			<a href="/mission_web/logout.do">�α׾ƿ�</a>
<%-- 			</c:otherwise> --%>
<%-- 		</c:choose> --%>
	</tr>
</table>









