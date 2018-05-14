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
<title>Cart Page</title>
</head>
<body>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartitems}" var="cartitem">
                
                    <tr>
                   
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img src="<c:url value="/resources/images/${cartitem.prodid}.jpg"/>" > </a>
                            <div class="media-body">
                                <h4 class="media-heading">&nbsp&nbsp ${cartitem.prodname}</h4>
                                <span>&nbsp&nbsp Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" name="quantity" value="${cartitem.quantity}"/>
                        
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cartitem.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cartitem.price * cartitem.quantity}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <input type="hidden" name="quantity" value="${cartitem.quantity}"/>
                        <a href="${pageContext.request.contextPath}/updateCartItem/${cartitem.citemid}">
                        <button type="button" class="btn btn-success">
                            Update <span class="glyphicon glyphicon-ok"></span>
                        </button></td></a>
                        <td class="col-sm-1 col-md-1">
                        <a href="${pageContext.request.contextPath}/deleteCartItem/${cartitem.citemid}">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td></a>
                    </tr>
                  
                    </c:forEach>
                   
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="Product.jsp" value="../displayProduct"/>">
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> place order
                        </button></td></a>
                        <td>
                        <a href="UserHome.jsp" value="/shop more"/>">
                        <button type="button" class="btn btn-success">
                            shop more <span class="glyphicon glyphicon-play"></span>
                        </button></td></a>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- cart page -->
<table cellspacing="3" align="center">
 <tr>
   <td colspan="5"><center><h3>Shopping Cart</h3></center></td>
 </tr>
 <tr bgcolor="pink">
    <td>Product ID</td>
    <td>Quantity</td>
    <td>SubTotal</td>
    <td>Image</td>
    <td>Operation</td>
 </tr>
 
 <c:forEach items="${cartitems}" var="cartitem">

 <tr>
  <form method="get" value="${pageContext.request.contextPath}/updateCartItem/${cartitem.citemid}">
 	<td>${cartitem.prodname}</td>
    <td><input type="text" name="quantity" value="${cartitem.quantity}"/></td>
    <td>${cartitem.price * cartitem.quantity}</td>
    <td><img src="<c:url value="/resources/images/${cartitem.prodid}.jpg"/>" width="100"></td>
    <td>
     <input type="submit" value="UPDATE" class="btn-success btn-block">
    <a href="${pageContext.request.contextPath}/deleteCartItem/${cartitem.citemid}"> Delete</a>
    <!--   <input type="submit" value="DELETE" class=""/> -->
   </td>  
  </form>
</tr>
 </c:forEach>
 <tr>
   <td><a href="Product.jsp" value="../displayProduct"/>place order</a></td>
   <td><a href="UserHome.jsp" value="/shop more"/>shop more</a></td>
 </tr>
 
</table>

</body>
</html>