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
	<tr><td><a href="tChart.jsp">Go to T-Chart</a></td></tr>
</table>

<form id="submitTransaction" action="SubmitTransactionServlet" method="post">


<table align="center">
	<tr><td><h1>Transaction</h1></td></tr>
	<tr><td><b>Name: </b></td><td>${user.name}</td></tr>
	<tr><td><b>Total Cash: </b></td><td>${user.totalCash}</td></tr>
	<tr><td></br></td></tr>
	<tr><td><input type="radio" name="dORc" value="debit" checked="checked"/>Debit</td>  <td>Amount ($): &nbsp;<input name="amount" type="text" />${amountError}</td></tr>
	<tr><td><input type="radio" name="dORc" value="credit"/>Credit</td>  <td>Description: &nbsp;
	<script language="javascript" type="text/javascript">
     function DropDownTextToBox(objDropdown, strTextboxId) {
        document.getElementById(strTextboxId).value = objDropdown.options[objDropdown.selectedIndex].value;
        DropDownIndexClear(objDropdown.id);
        document.getElementById(strTextboxId).focus();
    }
    function DropDownIndexClear(strDropdownId) {
        if (document.getElementById(strDropdownId) != null) {
            document.getElementById(strDropdownId).selectedIndex = -1;
        }
    }
</script>
    <input name="description" type="text" id="description"
        onchange="DropDownIndexClear('descriptionDropdown');" />

    <select name="descriptionDropdown" id="descriptionDropdown"
        onchange="DropDownTextToBox(this,'description');">
        <option value="" title=""></option>
        <option value="Food" title="Title for Item 1">Food</option>
        <option value="Rent" title="Title for Item 2">Rent</option>
        <option value="Car" title="Title for Item 3">Car</option>
        <option value="Phone" title="Title for Item 3">Phone</option>
        <option value="Internet" title="Title for Item 3">Internet</option>
        <option value="School Fees" title="Title for Item 3">School Fees</option>
        <option value="Clothing" title="Title for Item 3">Clothing</option>
        <option value="Personal Expense" title="Title for Item 3">Personal Expense</option>
        <option value="Income" title="Title for Item 3">Income</option>
        <option value="Credit Card" title="Title for Item 3">Credit Card</option>
        <option value="Transportation" title="Title for Item 3">Transportation</option>
        
    </select>
    <script language="javascript" type="text/javascript">
        //Since the first <option> will be preselected the IndexClear function must fire once to clear that out.
        DropDownIndexClear("descriptionDropdown");
    </script>
${descriptionError}</td></tr>

</table>

<table align="center">
	<tr></br><td><input type="submit" value="Submit"/></td><td><input type="reset" value="Reset"/></td></tr>
</table>
</form>

<div id="dataBox" style="max-height:50%" align="center"></div>

</body>
</html>