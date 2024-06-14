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
		
		<%-- 페이지 처리 --%>
		<jsp:include page="../common/paging.jsp"/>

		<!-- 검색 폼 -->
		<div class="search-area" align="center">
			<form id="loginForm" action="${ pageContext.servletContext.contextPath }/board/list" method="get" style="display:inline-block">		
			    <input type="hidden" name="currentPage" value="1">
			    <select id="searchCondition" name="searchCondition">
					<option value="category" ${ requestScope.selectCriteria.searchCondition eq "category"? "selected": "" }>카테고리</option>
					<option value="writer" ${ requestScope.selectCriteria.searchCondition eq "writer"? "selected": "" }>작성자</option>
					<option value="title" ${ requestScope.selectCriteria.searchCondition eq "title"? "selected": "" }>제목</option>
					<option value="content" ${ requestScope.selectCriteria.searchCondition eq "content"? "selected": "" }>내용</option>
				</select>
		        <input type="search" id="searchValue" name="searchValue" value="<c:out value="${ requestScope.selectCriteria.searchValue }"/>">

				<button type="submit">검색하기</button>
			</form>
			<c:if test="${ !empty sessionScope.loginMember }">
				<button id="writeBoard">작성하기</button>
			</c:if>
		</div>
	</div>
	<script>
		
		if(document.getElementsByTagName("td")) {
			
			const $tds = document.getElementsByTagName("td");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {
					this.parentNode.style.backgroundColor = "orangered";
					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onmouseout = function() {
					this.parentNode.style.backgroundColor = "black";
				}
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있습니다. */
					alert(this.parentNode.children[0].innerText);
				}
				
			}
			
		}
		
	</script>
	
</body>
</html>