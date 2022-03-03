<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="/foodapp/staticfiles/css/style1.css">
</head>
<body>


<div class="container">


<div class="admin-product-form-container centered">

   <form:form action="save_admin_update" modelAttribute="product" method="POST">
      <h3 class="title">update the product</h3>
      <form:input type="number" class="box" name="product_id" path="id" value="${product.id}" placeholder="id of the product"/>
      <form:input type="text" class="box" name="product_name" path="name" value="${product.name}" placeholder="enter the product name"/>
      <form:input type="number" min="0" class="box" name="product_price" path="price" value="${product.price}" placeholder="enter the product price"/>
      <form:input type="text" class="box" name="product_image" path="image" value="${product.image}"/>
      <input type="submit" class="btn" name="update_product" value="update product"/>
      <a href="admin_page" class="btn">go back!</a>
   </form:form>
   
</div>

</div>

</body>
</html>