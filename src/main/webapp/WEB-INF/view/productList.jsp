<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%--
<?php

@include 'config.php';
// @include 'admin_update.php';


if(isset($_GET['delete'])){
   $id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM products WHERE id = $id");
   header('location:admin_page.php');
};

?>
<?php

if(isset($message)){
   foreach($message as $message){
      echo '<span class="message">'.$message.'</span>';
   }
}

?>
--%>




<%--  $_GET['delete'] --%>



<%--  $message --%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin page</title>

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<!-- custom css file link  -->
<link rel="stylesheet" href="/foodapp/staticfiles/css/style1.css">


</head>
<body>

	<div class="container">
		<a href="index" class="stn">Go back to Main Page! </a>

		<div class="admin-product-form-container">

			<%-- <form action=" <?php $_SERVER['PHP_SELF'] ?> " method="post"
				enctype="multipart/form-data">
				<h3>add a new product</h3>
				<input type="text" placeholder="enter product name"
					name="product_name" class="box"> <input type="number"
					placeholder="enter product price" name="product_price" class="box">
				<input type="file" accept="/foodapp/staticfiles/image/png, /foodapp/staticfiles/image/jpeg, /foodapp/staticfiles/image/jpg"
					name="product_images" class="box"> <input type="submit"
					class="btn" name="add_product" value="add product">
			</form>  --%>

			<form:form action="save-new-product" modelAttribute="product" method="POST">	<%-- product is object, used using model defined in controller class--%>
				<h3>add a new product</h3>
				<label>Product Name </label>
				<form:input type="text" class="box" path="name"/>	<%--""path" means property of the object "product".--%>
				<label>Product Price </label>
				<form:input type="number" class="box" path="price"/>
				<label>Product Image </label>
				<%--  <form:input type="file" path="product_images" accept="/foodapp/staticfiles/image/png, /foodapp/staticfiles/image/jpeg, /foodapp/staticfiles/image/jpg" name="product_images" class="box"/>--%>
				<form:input path="image" name="product_images" class="box"/>
				<input type="submit" class="btn" name="add_product" value="add product"/>
			</form:form>


		</div>
		<%-- enterphpcode 
   <?php

   $select = mysqli_query($conn, "SELECT * FROM products");
   
   ?>
   --%>

		<div class="product-display">
			<table class="product-display-table">
				<thead>
					<tr>
						<th>product image</th>
						<th>product name</th>
						<th>product price</th>
						<th>action</th>
					</tr>
				</thead>

		<c:forEach var="product" items="${products}">
			
				<tr>
					<td><img
						src="/foodapp/staticfiles/uploaded_img/${product.image}"
						height="100" alt=""></td>
					<td>
						${product.name}
					</td>
					<td>
						${product.price}/- &#x20b9;
					</td>
					<td><a
						href="admin_update?productid=${product.id}"
						class="btn"> <i class="fas fa-edit"></i> edit
					</a> <a
						href="admin_delete?productid=${product.id}"
						class="btn"> <i class="fas fa-trash"></i> delete
					</a></td>
				</tr>
		</c:forEach>
			</table>
		</div>

	</div>


</body>
</html>