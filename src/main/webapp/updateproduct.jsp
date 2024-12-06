<%@ page import="com.klef.jfsd.model.Product" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <style>
        /* Styles omitted for brevity */
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
   
    <h4 align="center" style="color:red">
       <c:out value="${message}"></c:out>
    </h4>
   
    <h3 style="text-align: center;"><u>Update Product</u></h3>
    <div class="form-container">
        <form method="post" action="updateprod">
            <table>
                <tr>
                    <td><label for="id">Enter ID</label></td>
                    <td><input type="number" id="id" name="id" value="${product.id}" required/></td>
                </tr>
               <tr>
                    <td><label for="name">Enter Name</label></td>
                    <td><input type="text" id="name" name="name" value="${product.name}" required/></td>
                </tr>
                <tr>
                    <td><label for="description">Enter Description</label></td>
                    <td><input type="text" id="description" name="description" value="${product.description}" required/></td>
                </tr>
                
                <tr>
                    <td><label for="price">Enter Price</label></td>
                    <td><input type="number" id="price" name="price" step="0.01" value="${product.price}" required/></td>
                </tr>
                
                <tr>
                    <td><label for="quantity">Enter Quantity</label></td>
                    <td><input type="number" id="quantity" name="quantity" value="${product.quantity}" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
