<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL FMT</title>
</head>
<body>
	
	<h1>JSTL FMT Library Tag test</h1>
	
	<h2>fmt:formatNumber 태그 - 숫자에 포맷을 적용</h2>
	<c:set var="number" value="123456789" />
	
	<fmt:formatNumber value="${ number }" groupingUsed="true" /><br>
	
	<fmt:formatNumber value="1.234567" pattern="#.###" /><br>
	<fmt:formatNumber value="1.2" pattern="#.00" /><br>
	
	<fmt:formatNumber value="0.12" type="percent" /><br>
	<fmt:formatNumber value="${ number }" type="currency" /><br>
	<fmt:formatNumber value="${ number }" type="currency" currencySymbol="$" /><br>
	
	<hr />
	
	<h2>fmt:formatDate 태그 - 날짜와 시간에 포맷을 적용</h2>
	<c:set var="today" value="<%= new java.util.Date() %>" />
	
	오늘 날짜: <fmt:formatDate value="${ today }" type="date" /><br>
	오늘 시간: <fmt:formatDate value="${ today }" type="time" /><br>
	현재 날짜와 시간: <fmt:formatDate value="${ today }" type="both" /><br>
	
	<h3>날짜와 시간에 제공되는 포맷 적용</h3>
	[default] <fmt:formatDate value="${ today }" type="both" dateStyle="default" timeStyle="default"/><br>
	[short] <fmt:formatDate value="${ today }" type="both" dateStyle="short" timeStyle="short"/><br>
	[medium] <fmt:formatDate value="${ today }" type="both" dateStyle="medium" timeStyle="medium"/><br>
	[long] <fmt:formatDate value="${ today }" type="both" dateStyle="long" timeStyle="long"/><br>
	[full] <fmt:formatDate value="${ today }" type="both" dateStyle="full" timeStyle="full"/><br>
	
	<h3>원하는 포맷으로 pattern 적용</h3>
	현재 날짜: <fmt:formatDate value="${ today }" type="date" pattern="yyyy/MM/dd (E)" /><br>
	현재 시간: <fmt:formatDate value="${ today }" type="time" pattern="(a) hh:mm:ss" /><br>
	

</body>
</html>