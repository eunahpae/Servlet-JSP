<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="outer outer-notice-detail">
		<br>
		<h2 align="center">공지 사항 내용</h2>
		<div class="table-area">
			<table align="center">
				<tr>
					<td>제목 </td>
					<td colspan="3"><p><c:out value="${ requestScope.notice.title }"/></p></td>
				</tr>
				<tr>
					<td>작성자 </td>
					<td><p><c:out value="${ requestScope.notice.writer.nickname }"/></p></td>
					<td>작성일</td>
					<td><p><c:out value="${ requestScope.notice.createdDate }"/></p></td>
				</tr>
				<tr>
					<td>내용 </td>
					<td colspan="3">
						<textarea style="resize:none; width:90%; height:200px;" readonly><c:out value="${ requestScope.notice.body }"/></textarea>
					</td>
				</tr>
			</table>
			<br>
			<div align="center">
				<button onclick="location.href='${ pageContext.servletContext.contextPath }/notice/list'">메뉴로 돌아가기</button>
				<c:if test="${ sessionScope.loginMember.role eq 'ROLE_ADMIN' }">
					<button onclick="location.href='${ pageContext.servletContext.contextPath }/notice/update?no=${ requestScope.notice.no }'">수정하기</button>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>