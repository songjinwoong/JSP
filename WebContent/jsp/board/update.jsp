<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	alert('게시글 ${ param.no }가 수정되었습니다.');
	location.href="detail.jsp?no=${ param.no }";
</script>






