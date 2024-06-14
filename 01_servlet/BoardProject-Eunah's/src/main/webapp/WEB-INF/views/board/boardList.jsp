<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/menubar.jsp" />

<div class="outer outer-board-list">
		<br>
		<h2 align="center">게시판</h2>
		<div class="table-area">
			<table align="center" id="listArea">
			<tr>
				<th width="100px">글번호</th>
				<th width="100px">카테고리</th>
				<th width="300px">글제목</th>
				<th width="100px">작성자</th>
				<th width="100px">조회수</th>
				<th width="150px">작성일</th>
			</tr>
			<c:forEach var="board" items="${ requestScope.boardList }">
			<tr>
				<td><c:out value="${ board.no }"/></td>
				<td><c:out value="${ board.category.name }"/></td>
				<td><c:out value="${ board.title }"/></td>
				<td><c:out value="${ board.writer.nickname }"/></td>
				<td><c:out value="${ board.count }"/></td>
				<td><c:out value="${ board.createdDate }"/></td>
			</tr>
			</c:forEach>
		</table>
		</div>
		
	
</body>
</html>