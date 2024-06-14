<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>

	<div class="outer outer-notice-insert">
		<br>
		<h2 align="center">공지 사항 작성</h2>
		<div class="table-area">
			<form action="${ pageContext.servletContext.contextPath }/notice/insert" method="post">
				<table>
					<tr>
						<td>제목 </td>
						<td><input type="text" size="50" name="title"></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="${ sessionScope.loginMember.nickname }" name="writer" readonly>
						</td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="body" cols="60" rows="15" style="resize:none;" required></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset" id="cancleNotice">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
