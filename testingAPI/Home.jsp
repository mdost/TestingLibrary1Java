<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.parseData.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testing ParseData Jar</title>
<link rel="stylesheet" type="text/css" href="Testing.css">
</head>
<body>
	<h2>Testing Library ParseData.jar</h2>
	<p>
		Please select one of the methods from the list below, you would like to test:<%--br is for new line character, this is for comment--%>
		<br/>
		<table class="table1">
		<tr><th>Selection</th><th>Methods</th></tr>
		<form method="get" action="getParameters.jsp" enctype=text/plain >
		<tr><th><input type="radio" name="method" value="getCharityDetails"></th> <th>getCharityDetails() </th></tr>
		<tr><th><input type="radio" name="method" value="getCharitySalaries"></th> <th> getCharitySalaries() </th></tr>
		<tr><th><input type="radio" name="method" value="getFinancialDetails"></th> <th> getFinancialDetails() </th></tr>
		<tr><th><input type="radio" name="method" value="getCharityType"></th> <th> getCharityType() </th></tr>
		<tr><th><input type="radio" name="method" value="getProvState"></th> <th> getProvState() </th></tr>
		<tr><th><input type="radio" name="method" value="getCharityFiles"></th> <th> getCharityFiles() </th></tr>
		<tr><th><input type="radio" name="method" value="getCharityProjects"></th> <th> getCharityProjects() </th></tr>	
		<tr><th><input type="radio" name="method" value="getDonationURL"></th> <th> getDonationURL() </th></tr>
		<tr><th><input type="radio" name="method" value="searchCharities"></th> <th> searchCharities() </th></tr>
		<th colspan="2"><input type="submit" name="enter" value="Enter"></th>
		</table>
		</form>
	</p>
</body>
</html>