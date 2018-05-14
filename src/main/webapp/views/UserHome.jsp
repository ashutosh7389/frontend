<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<style>
body{
background-image: url("http://www.dutyfreeaddict.com/blog/wp-content/uploads/2015/04/Omega-Duty-Free.jpg");
}
</style>
<meta http-equiv="Content-Type" content="text/html">
<title>User Home Page</title>
</head>
<body>
<br>
<br>
<br>
<br>
<h1 align="center">Welcome User</h1>

 <div class="row">
     <div class="col-sm-6 col-md-3">
      <c:forEach items="${prodlist}" var="product">
       <a href="ProdDesc/${product.prodid}" class="thumbnail">
       <fieldset>
         <img src="https://backgroundimages.withfloats.com/actual/59b65f6e1d11c40b184a7c37.jpg" value="resources/images/${product.prodid}.jpg"/>
          <div class="caption">
         <h4>stalys watch </h4>
         <p>price 24000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
         <br>
       </div>
       </fieldset> 
       <fieldset>
       <img src="https://images.express.com/is/image/expressfashion/0034_04741809_0058?cache=on&wid=361&fmt=jpeg&qlt=75,1&resmode=sharp2&op_usm=1,1,5,0&defaultImage=Photo-Coming-Soon" value="resources/images/${product.prodid}.jpg"/>
          <div class="caption">
         <h4>maxus</h4>
         <p>8000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>
         </fieldset>
          <fieldset>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPwmgh7aXZ3juJiQrc-ZpymxIfq-GSB1nGVlcr0T1m94Nldw-UTg" value="resources/images/${product.prodid}.jpg"/>
          <div class="caption">
         <h4>Ross</h4>
         <p>10000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>
         </fieldset>
          <fieldset>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0tzEpra3YLkJumkRIEkzWkKwKgJPruJ_27LAkH90lra5RZZ6Yg" value="resources/images/${product.prodid}.jpg"/>
          <div class="caption">
         <h4>double</h4>
         <p>14000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>
         </fieldset>
           <fieldset>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4dv8JkKaDcsO0VGBH57Ravi01vKH_xkakP7HdQ3JYwGSCPm_k" value="resources/images/${product.prodid}.jpg"/>
          <div class="caption">
         <h4>Effect</h4>
         <p>95000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>  </fieldset>
             <fieldset>
            <img src="http://media.tiffany.com/is/image/Tiffany/1X/20160322_CB_Tiffany_View_All_Browse_Grid_Tile1_3x2Promo_US_CT60_Watches_3x2_v1.jpg?v=20161026164214" value="utk.jpg"/>
        <div class="caption">
         <h4>fresh</h4>
         <p>2000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>
       
        </a>
          </fieldset>
            <fieldset>
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4dv8JkKaDcsO0VGBH57Ravi01vKH_xkakP7HdQ3JYwGSCPm_k" value="resources/images/${product.prodid}.jpg"/>
             <div class="caption">
         <h4>Test</h4>
         <p>4000</p>
         <td><a href="Cart.jsp" value="ProdDesc/${product.prodid}"/><font face="verdana" color="green">ADD TO CART</font></a>  </td>
       </div>
         </fieldset>
      </c:forEach>
     </div>
 </div>
</body>
</html>