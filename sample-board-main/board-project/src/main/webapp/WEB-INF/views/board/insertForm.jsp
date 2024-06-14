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
	
	<div class="outer outer-board-insert">
		<br>
		<h2 align="center">게시판 작성</h2>
		<div class="table-area">
			<form action="${ pageContext.servletContext.contextPath }/board/insert" method="post">
				<table>
					<tr>
						<td>분야</td>
						<td>
							<select name="category">
								<option value="1">공통</option>
								<option value="2">운동</option>
								<option value="3">등산</option>
								<option value="4">낚시</option>
								<option value="5">게임</option>
								<option value="6">요리</option>
								<option value="7">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" name="title" style="width:400px;"></td>
					</tr>
					<tr>
						<td>내용 </td>
						<td colspan="3">
							<textarea name="body" cols="60" rows="15" style="resize:none;"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
				
			</form>
			
		</div>
	</div>
</body>
</html>