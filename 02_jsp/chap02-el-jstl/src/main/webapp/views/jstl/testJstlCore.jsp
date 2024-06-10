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

	<%-- c:set으로 선언한 변수는 스크립팅 요소에서 사용 불가하다. --%>

	<%-- el을 활용하기 위해서는 스크립팅 요소를 value 속성으로 지정한 c:set 태그가 필요하다. --%>

	<hr>

	<h2>c:set 태그 - 배열 또는 컬렉션으로 사용할 문자열 선언</h2>

	<hr />

	<h2>c:remove 태그 - 변수 삭제</h2>

	<%-- scope를 지정하지 않으면 모든 scope의 동일한 이름을 가진 변수를 모두 제거한다. --%>

	<hr />

	<h2>c:out 태그 - 값 출력</h2>
	<%-- escapeXml 속성을 false로 지정하면 <, >를 태그로 인식하고,
       				  true로 지정하면 일반 문자로 인식한다. --%>
	<%-- escapeXml 속성의 기본값은 true이다. --%>

	<hr />

	<h2>c:if 태그 - 조건문</h2>

	<%-- test 속성에 조건식을 기술하며, 조건식은 반드시 el 형식으로 기술해야 한다. --%>

	<%-- <c:if> 비교는 기본적으로 문자열로 비교하므로 숫자 비교 시에는 파싱해야 한다. --%>

	<hr />

	<h2>c:choose 태그 - switch</h2>
	<h3>c:when 태그 - case</h3>
	<h3>c:otherwise 태그 - default</h3>

	<hr />

	<h2>c:forEach 태그 - for 반복문</h2>

	<br>

	<%--
	    varStatus를 통해 상태를 관리할 수 있다. (인덱스 등)
	    - current : 현재 반복 횟수
	    - index : 제로(0) 기반 인덱스
	    - count : 1 기반 인덱스
	    - first : 현재 라운드가 반복을 통한 첫 번째
	    - last : 현재 라운드가 반복을 통한 마지막 번째
  	--%>

	<hr />

	<h2>c:forTokens 태그 - 문자열을 토큰으로 분리 처리할 때 사용</h2>

	<hr />

	<h2>c:url 태그 - 링크 설정 정보 별도 지정 시 사용</h2>

</body>
</html>