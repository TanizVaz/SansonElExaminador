<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="header.frame.jsp" %>
<%@include file="messages.frame.jsp" %>

<h1>Ocurrio un error</h1>
<font color="red">
<%=(String)request.getAttribute(Attribute.Request.ERROR) %>
</font>
</body>
</html>