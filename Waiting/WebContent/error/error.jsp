<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<h2> 처리중에 에러 발생! 코드에 문제가 있습니다!</h2>
	<hr>
	<p> 상태코드 :${pageContext.errorData.statusCode}</p>
	<br>
	<p>예외 타입 : ${pageContext.errorData.throwable} <p>
	
</body>
</html>