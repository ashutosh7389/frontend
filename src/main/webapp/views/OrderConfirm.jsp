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
 <br>
 <br>
 <br>
 <table cellspacing="3" align="center"> 
   <tr>
      <td colspan="5"><center><h3>Order Confirm</h3></center></td>
   </tr>
   <tr bgcolor="pink">
    <td>Product Name</td>
    <td>Quantity</td>
    <td>SubTotal</td>
    <td>Image</td>
   </tr>
   
  <c:forEach items="${cartitems}" var="cartitem">
   <tr>
 	<td>${cartitem.prodname}</td>
    <td>${cartitem.quantity}</td>
    
    <td><img src="<c:url value="/resources/images/${cartitem.prodid}.jpg"/>" width="100"></td>  
    <td>${cartitem.price * cartitem.quantity}</td>
   </tr>
 </c:forEach>
   <tr>
    <td colspan="3">Grand Total</td>
    <td>${grandtotal}</td>
   </tr>
<fieldset>
               <form action="Supplier.jsp">
                <input type="submit" value="see your supplier status"/>
                 </form>
                 	</fieldset>
		 <br>
		 	<fieldset>
		  <form action="UserHome.jsp">
                <input type="submit" value="shop more"/>
                 </form>
		 	</fieldset>
 </table>
</body>
</html>
