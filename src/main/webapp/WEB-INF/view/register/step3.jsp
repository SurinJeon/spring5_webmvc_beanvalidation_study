<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><spring:message code="member.register"/></title>
</head>
<body>
	<p>
		<spring:message code="register.done">
			<spring:argument value="${registRequest.name }"/>
			<spring:argument value="${registRequest.email }"/>
		</spring:message> <!-- argument쓰면 {}이렇게 비워놓은 곳에 argument가 들어감 -->
		
	</p>
	<p><a href="<c:url value='/main'/>">[<spring:message code="go.main"/>]</a></p> <!-- 컨트롤러 구현 없는 경로 매핑(그냥 그 페이지로 바로 가면 됨) -->
</body>
</html>