<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>System - Personal Budget Tracking</title>
<link rel="stylesheet" href="styles/home.css" type="text/css"></link>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,300,600,400" rel="stylesheet" type="text/css">
</head>
<body>

<table align="center">
	<tr><td align="center"><img src="images/LogoPBT.png" alt="logo" align="top" height="126" width="650"/><hr size="2" noshade="noshade" style=""/></td></tr>
	<tr><td><a href="#">Go to T-Chart</a></td></tr>
</table>

<form id="submitTransaction" action="SubmitTransactionServlet" method="post">


<table align="center">
	<tr><td><h1>Transaction</h1></td></tr>
	<tr><td><b>Name: </b></td><td><label id="usersName"></label></td></tr>
	<tr><td><b>Total Cash: </b></td><td><label id="totalCash"></label></td></tr>
	<tr><td></br></td></tr>
	<tr><td><input type="radio" name="dORc" value="debit" checked="checked"/>Debit</td>  <td>Amount ($): &nbsp;<input id="amount" type="text" />${amountError}</td></tr>
	<tr><td><input type="radio" name="dORc" value="credit"/>Credit</td>  <td>Description: &nbsp;<input id="desc" type="text" />${descriptionError}</td></tr>
</table>

<table align="center">
	<tr></br><td><input type="submit" value="Submit"/></td><td><input type="reset" value="Reset"/></td></tr>
</table>
</form>

<div id="dataBox" style="max-height:50%" align="center"></div>

</body>
</html>