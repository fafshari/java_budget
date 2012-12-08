<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>T-Chart - Personal Budget Tracking</title>
<link rel="stylesheet" href="styles/home.css" type="text/css"></link>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,300,600,400" rel="stylesheet" type="text/css">
</head>

<body>

<table align="center">
	<tr><td align="center"><img src="images/LogoPBT.png" alt="logo" align="top" height="126" width="650"/><hr size="2" noshade="noshade" style=""/></td></tr>
</table>

<table align="center">
	<tr><td><h1>Transaction History</h1></td></tr>
</table>

<table align="center">
	<tr>
		<td align="center" width="200px"><b><font size="4">Debit</font></b></td>
		<td align="center" width="200px"><b><font size="4">Credit</font></b></td>
		<td align="center" width="200px"><b><font size="4">Description</font></b></td>
		<td align="center" width="200px"><b><font size="4">Date</font></b></td>
	</tr>
	<tr><td colspan="4"><hr size="1"/></td></tr>
	
	<c:forEach var="transaction" items="${transactionList}">
	<tr>
		<td align="center" width="200px">
		<c:choose>
				<c:when test="${transaction.isIsCredit == false}">
				${transaction.amount}
			</c:when>
			<c:otherwise>-</c:otherwise>
		</c:choose></td>
		
		
		<td align="center" width="200px"><c:choose>
				<c:when test="${transaction.isIsCredit == true}">
				${transaction.amount}
			</c:when>
			<c:otherwise>-</c:otherwise>
		</c:choose></td>
		
		<td align="center" width="200px">${description}</td>
		<td align="center" width="200px">${date}</td>
	</tr>
	
	</c:forEach>
	
	
</table>


</body>
</html>