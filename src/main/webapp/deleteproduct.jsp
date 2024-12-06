<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
<style>
/* General body styles */
body {
    background-color: #f4f7fa; /* Light background */
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    color: #333; /* Dark text */
}
/* Center heading style */
h3 {
    color: #333;
    text-align: center;
    font-size: 28px;
    font-weight: bold;
    margin-top: 20px;
    margin-bottom: 30px;
}
/* Table container */
table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Table header styles */
th {
    background-color: #333; /* Dark background */
    color: white;
    padding: 12px 15px;
    text-align: center;
    font-weight: bold;
}

/* Table cell styles */
td {
    padding: 10px 15px;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

/* Hover effect for table rows */
tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
}

/* Link for delete action */
a {
    color: #e74c3c;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    color: #c0392b;
    text-decoration: underline;
}

/* For small screens */
@media (max-width: 768px) {
    table {
        width: 100%;  /* Full width on smaller screens */
    }
    th, td {
        font-size: 14px;  /* Smaller font size */
    }
}
</style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3><u>Delete Product</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${productlist}" var="prod">
            <tr>
                <td><c:out value="${prod.id}"/></td>
                <td><c:out value="${prod.name}"/></td>
                <td><c:out value="${prod.description}"/></td>
                <td><c:out value="${prod.price}"/></td>
                <td><c:out value="${prod.quantity}"/></td>
                <td>
                    <a href="<c:url value='/delete?id=${prod.id}'/>">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
