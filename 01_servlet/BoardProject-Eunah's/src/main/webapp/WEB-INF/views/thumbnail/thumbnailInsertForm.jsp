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
	
	<div class="outer outer-thumbnail-insert">
		<br>
		<h2 align="center">사진게시판 작성</h2>
		<form action="${ pageContext.servletContext.contextPath }/thumbnail/insert" method="post" encType="multipart/form-data">
			<div class="thumbnail-insert-area">
				<table align="center">
					<tr>
						<td width="100px">제목</td>
						<td colspan="3"><input type="text" size="45" name="title"></td>
					</tr>
					<tr>
						<td>대표 이미지</td>
						<td colspan="3">
							<div class="title-img-area" id="titleImgArea">
								<img id="titleImg" width="350" height="200">
							</div>
						</td>
					</tr>
					<tr>
						<td>내용 사진</td>
						<td>
							<div class="content-img-area1" id="contentImgArea1">
								<img id="contentImg1" width="120" height="100">
							</div>
						</td>
						<td>
							<div class="content-img-area2" id="contentImgArea2">
								<img id="contentImg2" width="120" height="100">
							</div>
						</td>
						<td>
							<div class="content-img-area3" id="contentImgArea3">
								<img id="contentImg3" width="120" height="100">
							</div>
						</td>
						
					</tr>
					<tr>
						<td width="100px">사진 메모</td>
						<td colspan="3">
							<textarea name="body" rows="5" cols="50" style="resize:none;"></textarea>
						</td>
					</tr>
				</table>
				<div class="thumbnail-file-area">
					<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
					<input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)">
					<input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this,3)">
					<input type="file" id="thumbnailImg4" name="thumbnailImg4" onchange="loadImg(this,4)">
				</div>
			</div>
			<br>
			<div class="thumbnail-btn-area">
				<button>취소하기</button>
				<button type="submit">작성완료</button>
			</div>
		</form>
			
		<script>
			
			const $titleImgArea = document.getElementById("titleImgArea");
			const $contentImgArea1 = document.getElementById("contentImgArea1");
			const $contentImgArea2 = document.getElementById("contentImgArea2");
			const $contentImgArea3 = document.getElementById("contentImgArea3");
			
			$titleImgArea.onclick = function() { 
				document.getElementById("thumbnailImg1").click(); 
			}
			
			$contentImgArea1.onclick = function() {
				document.getElementById("thumbnailImg2").click();
			}
			
			$contentImgArea2.onclick = function() {
				document.getElementById("thumbnailImg3").click();
			}
			
			$contentImgArea3.onclick = function() {
				document.getElementById("thumbnailImg4").click();
			}
			
			function loadImg(value, num) {
				if (value.files && value.files[0]) {
					const reader = new FileReader();
					reader.onload = function(e) {
						switch(num){
						case 1:
							document.getElementById("titleImg").src = e.target.result;
							break;
						case 2:
							document.getElementById("contentImg1").src = e.target.result;
							break;
						case 3:
							document.getElementById("contentImg2").src = e.target.result;
							break;
						case 4:
							document.getElementById("contentImg3").src = e.target.result;
							break;
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			}
			
		</script>
		
	</div>
</body>
</html>