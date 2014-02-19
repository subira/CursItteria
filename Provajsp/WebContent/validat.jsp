<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="WEB-INF/Tagliv.tld" prefix="HolaMundo" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="Classes.Conexio" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String nom = request.getParameter("user");
	String pasw = request.getParameter("pasw");
	
	Boolean ies = false;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Validacio</title>
</head>
<body>
	
	
	<sql:setDataSource var="bd" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/bbdd" user="root" password="" />
	<sql:query dataSource="${bd}" sql="select * from socis;" var="query" />
	<% Conexio con = new Conexio();
	ies = con.conectionValidacio(nom, pasw);
	%>
	<table border="1">
		<c:forEach var="row" items="${query.rows}">
			<tr>
				<td><c:out value="${row.DNI}"></c:out></td>
				<td><c:out value="${row.NOM}"></c:out></td>
				<td><c:out value="${row.COGNOM1}"></c:out></td>
				<td><c:out value="${row.COGNOM2}"></c:out></td>
				<td><c:out value="${row.NICKNAME}"></c:out></td>
				<td><c:out value="${row.PASW}"></c:out></td>
				<td><c:out value="${row.ADRECA}"></c:out></td>
				<td><c:out value="${row.DATA_NAIX}"></c:out></td>
				<td><c:out value="${row.DATA_ALTA}"></c:out></td>
				
			<c:if test="ies">
				<%
				ies = true;
				System.out.println("222");
				%>
				<c:out value="Validacio correcte" />
			</c:if>
			</tr>
		</c:forEach>
		<HolaMundo:HolaMundo/>

	</table>
</body>
</html>