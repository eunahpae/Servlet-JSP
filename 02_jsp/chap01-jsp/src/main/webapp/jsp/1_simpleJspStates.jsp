<%-- 1. 페이지 지시자 태그 --%>
<%--
    페이지에 대한 설정을 하는 지시자 태그이다.
    현재 페이지에 scriptlet 태그를 이용하여 작성하는 문법은 Java라는 의미이며,
    reponse header에 응답을 위한 설정도 할 수 있다.
    content-type 헤더에 MIME 타입과 인코딩 방식을 지정한다.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>simple JSP states</title>
</head>
<body>

	<%-- 2. 주석 태그 --%>
	<!-- HTML 주석 태그 : 클라이언트에게 노출되지만, -->
	<%-- JSP 주석 태그 : 클라이언트에게 노출되지 않는다. --%>

	<%-- 3. 선언 태그 --%>
	<%-- 서블릿으로 변환 시 선언 태그 내에 작성한 내용을 필드로 선언한다. --%>
	<%! private String name;
		private int age; %>

	<%-- 4. 스크립틀릿 태그 (scriptlet) --%>
	<%
		// 주석
		name = "다람쥐";
		age = 900;
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		
		for (int i = 0; i < name.length(); i++){
			System.out.println(name.charAt(i));
		}
	%>
	
	<%-- 5. expression 태그 --%>
    <%-- PrintWriter를 이용하여 브라우저에 값을 내보내 보여지게 한다. --%>
    <%--
        자바 코드로 변환 시 out.print(); 괄호 안에 expression 태그 내에 작성한 내용이 들어간다.
        정상적으로 출력한 값을 작성하는 경우 out.print(name); 이런 식으로 표현되는데,
        expression 태그 내에 세미콜론을 작성하면 out.print(name;); 형태가 되므로 compile에러가 발생한다.
    --%>
	name : <%= name %><br>
	age : <%= age %><br>

</body>
</html>