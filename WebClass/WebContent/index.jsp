<!-- 1.Directive tag지시자 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--JSP주석 --%>
<%--3. Declaration tag(선언부) --%>
<%! public static final String DEFAULT_NAME = "Guest"; %>
<%
	//java code 
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
%>
<%--5. Expression tag(표현식) --%>
<h1>Hello, <%=name%></h1>
</body>
</html>