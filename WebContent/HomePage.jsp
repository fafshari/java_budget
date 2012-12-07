<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Home - Personal Budget Tracking</title>
<link rel="stylesheet" href="styles/home.css" type="text/css"></link>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,300,600,400" rel="stylesheet" type="text/css">
</head>

<body>

<table align="center">
<tr>
	<td align="center"><img src="images/LogoPBT.png" alt="logo" align="top" height="126" width="650"/><hr size="2" noshade="noshade" style=""/></td>
</tr>
</table>
<form id="accountSetup" action="AccountSetupServlet" method="post">

<table align="center">
<tr><td><h1>Account Setup</h1></td></tr>
<tr><td>Name: </td><td> <input type="text"/>error</td></tr>
<tr><td>Total Available Cash: </td><td><input id="totalCash" type="text"/>error</td> </tr>
<tr><td>Email:</td> <td><input id="email" type="text"/>error</td></tr>
</table>

<table align="center">
<tr></br><td><input type="submit" value="Submit"/></td><td> <input type="reset" value="Reset"/></td></tr>
</table>
</form>



</body>


</html>