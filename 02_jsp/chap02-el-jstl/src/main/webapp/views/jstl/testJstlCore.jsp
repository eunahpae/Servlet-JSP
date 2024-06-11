<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<h1>JSTL Core Library Tag test</h1>

	<h2>c:set 태그 - 변수 선언</h2>
	<%-- scope 생략 시 기본은 pageScope이다. --%>
	<c:set var="num1" value="100" scope="session" />
	<c:set var="num2" value="200" scope="session" />

	<%-- c:set으로 선언한 변수는 스크립팅 요소에서 사용 불가하다. --%>
	<%-- <% int sum = num1 + num2; --%>
	<c:set var="sum" value="${ num1 + num2 }" />
	num1 + num2 = ${ sum }
	<br>

	<%
	int num3 = 10, num4 = 20;
	%>
	num3 + num4 = ${ num3 + num4 }
	<br>
	<%-- el을 활용하기 위해서는 스크립팅 요소를 value 속성으로 지정한 c:set 태그가 필요하다. --%>
	<c:set var="sum2" value="<%=num3 + num4%>" />
	num3 + num4 = ${ sum2 }
	<br>

	<hr>

	<h2>c:set 태그 - 배열 또는 컬렉션으로 사용할 문자열 선언</h2>
	<c:set var="colors">
	 red, orange, yellow, green, blue, purple
	</c:set>
	colors 배열 값 : ${ colors }
	<br>

	<script>
		window.onload = function() {
			let colors = '${ colors }'.split(', ');
			console.log(colors);
		}
	</script>

	<hr />

	<h2>c:remove 태그 - 변수 삭제</h2>
	num1 값 : ${ num1 }
	<br> num2 값 : ${ num2 }
	<br>

	<%-- scope를 지정하지 않으면 모든 scope의 동일한 이름을 가진 변수를 모두 제거한다. --%>
	<c:remove var="num1" scope="session" />
	<c:remove var="num2" scope="session" />

	num1 값 : ${ num1 }
	<br> num2 값 : ${ num2 }
	<br>

	<hr />

	<h2>c:out 태그 - 값 출력</h2>
	<c:out value="core 라이브러리의 <out> 태그는 값을 화면에 출력하는 태그이다." />
	<%-- escapeXml 속성을 false로 지정하면 <, >를 태그로 인식하고,
       				  true로 지정하면 일반 문자로 인식한다. --%>
	<%-- escapeXml 속성의 기본값은 true이다. --%>
	<c:out value="<h3>데이터 출력</h3>" escapeXml="false" />
	<br>
	<c:out value="<h3>데이터 출력</h3>" escapeXml="true" />
	<br>
	<c:out value="<h3>데이터 출력</h3>" />
	<br>

	<c:out value="${ param.name }" default="홍길동" />
	<br>

	<hr />

	<h2>c:if 태그 - 조건문</h2>
	<c:set var="value1" value="6" />
	<c:set var="value2" value="10" />

	<%-- test 속성에 조건식을 기술하며, 조건식은 반드시 el 형식으로 기술해야 한다. --%>
	<c:if test="${ value1 >= value2 }">
		<h3>value1 이 큽니다! (${ value1 }) - 기본 문자열 비교</h3>
	</c:if>

	<%-- <c:if> 비교는 기본적으로 문자열로 비교하므로 숫자 비교 시에는 파싱해야 한다. --%>
	<c:if test="${ (value1 + 0) < (value2 + 0) }">
		<h3>value2 이 큽니다! (${ value2 }) - 파싱하여 숫자 비교</h3>
	</c:if>

	<hr />

	<h2>c:choose 태그 - switch</h2>
	<h3>c:when 태그 - case</h3>
	<h3>c:otherwise 태그 - default</h3>

	<c:set var="no" value="${ param.no }" />
	param.no 의 값은
	<c:out value="${ param.no }" />
	입니다.
	<c:choose>
		<c:when test="${ no == 1}">
			<h3>안녕하세요 :)</h3>
		</c:when>
		<c:when test="${ no eq 2}">
			<h3>반갑습니다 :D</h3>
		</c:when>
		<c:otherwise>
			<h3>환영합니다~!~!~!</h3>
		</c:otherwise>
	</c:choose>

	<hr />

	<h2>c:forEach 태그 - for 반복문</h2>
	<c:forEach begin="1" end="10">
		반복실행<br>
	</c:forEach>

	<c:forEach var="size" begin="1" end="10" step="1">
		<font size="${ size }">글자 크기 ${ size }</font>
		<br>
	</c:forEach>

	<br>

	<%--
	    varStatus를 통해 상태를 관리할 수 있다. (인덱스 등)
	    - current : 현재 반복 횟수
	    - index : 제로(0) 기반 인덱스
	    - count : 1 기반 인덱스
	    - first : 현재 라운드가 반복을 통한 첫 번째
	    - last : 현재 라운드가 반복을 통한 마지막 번째
  	--%>

	<h2>c:forEach 태그 - 배열 또는 컬렉션 연속 처리에 for~each 문처럼 사용</h2>
	<c:forEach var="color" items="${ colors }" varStatus="st">
		<font color="${ color }">(${st.index}) ${st.count} : 글자색 ${ color }</font>
		<br>
	</c:forEach>


	<hr />

	<h2>c:forTokens 태그 - 문자열을 토큰으로 분리 처리할 때 사용</h2>
	<ul>
		<c:forTokens var="saying" items="hello hi 안녕 bye sayonara" delims=" ">
			<li>${ saying }</li>
		</c:forTokens>
	</ul>
	<ul>
		<c:forTokens var="saying" items="hello-hi*안녕/bye sayonara"
			delims="-/* ">
			<li>${ saying }</li>
		</c:forTokens>
	</ul>

	<hr />

	<h2>c:url 태그 - 링크 설정 정보 별도 지정 시 사용</h2>

	<c:url var="fmtlink" value="testJstlCoreResult.jsp">
		<c:param name="num" value="77" />
	</c:url>
	<a href="${ fmtlink }">결과 화면 연결</a>


</body>
</html>