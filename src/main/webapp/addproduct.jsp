<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align=center><u>Add Product</u></h3>
<br>
<form action="insertproduct" method="post" enctype="multipart/form-data" class="form-container">
    <table align="center">
        <tr><td></td></tr>
        <tr>
            <td><label>Name</label></td>
            <td><input type="text" name="name" required="required"/></td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td><label>Description</label></td>
            <td><textarea name="description"></textarea></td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td><label>Price</label></td>
            <td><input type="number" name="price" required="required" step="0.01" /></td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td><label>Quantity</label></td>
            <td><input type="number" name="quantity" required="required"/></td>
        </tr>
        <tr><td></td></tr>
        <tr align=center>
            <td colspan=2><input type="submit" value="Add" class="button"></td>
        </tr>
    </table>
</form>
</body>
</html>
