<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${ pageContext.servletContext.contextPath }/resources/js/event.js"></script>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/common.css">
<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 영역 -->
	<div class="header">
	
		<!-- 헤드라인 -->
		<h1 align="center">Welcome to Ohgiraffers World</h1>
		
		<!-- 로그인 영역 -->
		<div class="login-area">
		
			<!-- 로그인이 필요한 경우 -->
			<c:if test="${ empty sessionScope.loginMember }">
				<!-- 로그인 폼 -->
				<form id="loginForm" action="${ pageContext.servletContext.contextPath }/member/login" method="post">
					<table>
						<tr>
							<td>
								<label class="text">ID : </label>
							</td>
							<td>
								<input type="text" name="memberId">
							</td>
						</tr>
							<tr>
							<td>
								<label class="text">PWD : </label>
							</td>
							<td>
								<input type="password" name="memberPwd">
							</td>
						</tr>
					</table>
					<div class="btns" align="right">
						<input type="button" class="btn btn-yg" value="회원가입" id="regist">
						<input type="submit" class="btn btn-or" value="로그인" id="login">
					</div>
				</form>
			</c:if>
			
			<c:if test="${ !empty sessionScope.loginMember }">
				<!-- 로그인 되어 있는 경우 -->
				<h3><c:out value="${ sessionScope.loginMember.nickname }"/>님의 방문을 환영합니다.</h3>
				<div class="btns">
					<input type="button" class="btn btn-yg" value="정보수정" id="updateMember">
					<input type="button" class="btn btn-or" value="로그아웃" id="logout">
				</div>
			</c:if>
			
		</div>	<!-- login-area end -->
	</div>	<!-- header end -->
	
	<!-- 흐름 속성 제거 -->
	<br clear="both">
	
	<!-- 메뉴 영역 -->
	<div class="menu-area">
		<div class="nav-area">
			<ul>
				<li><a href="${ pageContext.servletContext.contextPath }">HOME</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/notice/list">공지사항</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/board/list">자유게시판</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/thumbnail/list">사진게시판</a></li>
			</ul>
		</div>	<!-- nav-area end -->
	</div>	<!-- menu-area end -->
</body>
</html>
