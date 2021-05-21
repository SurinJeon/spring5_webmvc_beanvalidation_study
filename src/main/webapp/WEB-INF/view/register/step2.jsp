<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> <!-- spring이 제공하는 폼 태그를 사용하기 위해 설정 -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><spring:message code="member.register"/></title>
</head>
<body>
	<h2><spring:message code="member.info"/> <spring:message code="input"/></h2>
	<form:form action="step3" modelAttribute="registRequest"> <!-- 새로운 RegistRequest 객체 생성, 밑에 있는 요소들로 setting작업 됨 -->
	<!-- form:form태그 썼으면 반드시! 반 드 시! model 안에 dto객체 필요함!!!!!!!! -->
		<p>
			<label><spring:message code="email"/>: <br> 
			<form:input path="email"/>
			<form:errors path="email"/></label>
		</p>
		<p>
			<label><spring:message code="name"/>: <br> 
			<form:input path="name"/>
			<form:errors path="name"/></label>
		</p>
		<p>
			<label><spring:message code="password"/>: <br> 
			<form:input path="password"/>
			<form:errors path="password"/></label>
		</p>
		<p>
			<label><spring:message code="password.confirm"/>: <br> 
			<form:input path="confirmPassword"/>
			<form:errors path="confirmPassword"/></label>
		</p>
		<input type="submit" value="<spring:message code="register.btn"/>">	
	</form:form>
</body>
</html>