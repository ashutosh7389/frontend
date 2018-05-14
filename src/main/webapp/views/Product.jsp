<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head><style>
body{
background-image: url("http://www.dutyfreeaddict.com/blog/wp-content/uploads/2015/04/Omega-Duty-Free.jpg");
}
</style>
<meta http-equiv="Content-Type" content="text/html">
<title>PRODUCT</title>
</head>
<body>
    
   	 <table align="center">
			<tr>
				<td colspan="2"> Product Details </td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><form:input path="prodname" /></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="catid">
						<form:option value="0" label="------Select----" />
						<form:options items="${catlist}" />
					</form:select></td>
			</tr>
			<tr>
				<td>Supplier</td>
				  <td><form:select path="suppid">
						<form:option value="0" label="------Select----" />
						<form:options items="${supplist}" />
					</form:select></td>
			</tr>
			<tr>
				<td>Price</td>
				  <td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Stock</td>
				  <td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Product Desc</td>
				 <td><form:textarea path="prodDesc" /></td>
			</tr>
			<tr>
			     <td>Product Image</td>
			     <td><form:input type="file" path="pimage" /></td>
	        </tr>
		
		 		</table>
		
		<BR>
		<BR>
		<form:hidden path="prodid"/>

	<!-- Displaying the Product data using Table -->
	<table cellspacing="2" align="center" border="1">
		<tr bgcolor="pink">
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Price</td>
			<td>Quantity</td>
			<td>Category Id</td>
			<td>Supplier Id</td>
			<td>Operation</td>
		</tr>
		<c:forEach items="${prodlist}" var="product">
			<tr bgcolor="cyan">
				<td>${product.prodid}</td>
				<td>${product.prodname}</td>
				<td>${product.price}</td>
				<td>${product.quantity}</td>
				<td>${product.catid}</td>
				<td>${product.suppid}</td>
				<td><a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a>
					<a href="<c:url value="updateProduct/${product.prodid}"/>">Update</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<fieldset>
               <form action="OrderConfirm.jsp">
                <input type="submit" value="see your order status"/>
                 </form>
                 	</fieldset>
		
	<!-- Completed Displaying Table String path="C:\\priyanka\\MobitelFrontend\\src\\main\\webapp\\resources\\images";-->
</body>
</html>