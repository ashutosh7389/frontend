<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>
<br>
<br>
<br>
<!-- Category Form Started -->
<c:if test="${flag}">
	<form action="../UpdateSupplier" method="post">
</c:if>
<c:if test="${!flag}">
	<form action="AddSupplier" method="post">
</c:if>

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2" align="center">Supplier Details</td>
		<c:if test="${flag}">
			<input type="hidden" name="suppid" value="${supplier.suppid}" />
		</c:if>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<c:if test="${flag}">
			<td><input type="text" name="suppname"
				value="${supplier.suppname}" /></td>
		</c:if>
		<br>
		<br>
		<c:if test="${!flag}">
			<td><input type="text" name="suppname" /></td>
		</c:if>
	</tr>
	<tr>
		<td>Supplier Address</td>
		<c:if test="${flag}">
			<td><input type="text" name="suppaddr"
				value="${supplier.suppaddr}" /></td>
		</c:if>
		<c:if test="${!flag}">
			<td><input type="text" name="suppaddr" /></td>
		</c:if>
	</tr>
	<tr>
		<td colspan="2"><c:if test="${flag}">
				<input type="submit" value="UpdateSupplier" />
			</c:if> <c:if test="${! flag}">
				<input type="submit" value="AddCSupplier" />
			</c:if></td>
	</tr>
</table>
</form>
<!-- Supplier Form Completed -->

<!-- Displaying the Supplier data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${suppdetail}" var="supplier">
		<tr bgcolor="cyan">
			<td>${supplier.suppid}</td>
			<td>${supplier.suppname}</td>
			<td>${supplier.suppaddr}</td>
			<td><a href="<c:url value="deleteSupplier/${supplier.suppid}"/>">Delete</a>
				<a href="<c:url value="updateSupplier/${supplier.suppid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>