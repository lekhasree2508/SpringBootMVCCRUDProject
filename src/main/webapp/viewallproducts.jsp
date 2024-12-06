<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %><br>
<h3 align="center">View All Products</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>DESCRIPTION</th>
<th>PRICE</th>
<th>QUANTITY</th>
</tr>
<c:forEach items="${productlist}" var="product">
<tr>
<td> <c:out value="${product.id}" ></c:out></td>
<td> <c:out value="${product.name}" ></c:out></td>
<td> <c:out value="${product.description}" ></c:out></td>
<td> <c:out value="${product.price}" ></c:out></td>
<td> <c:out value="${product.quantity}" ></c:out></td>
</tr>
</c:forEach>
</table>
</body>
</html>
