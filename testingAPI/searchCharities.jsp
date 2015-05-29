<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.parseData.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Charities Results</title>
<link rel="stylesheet" type="text/css" href="result.css">
</head>
<body>
	<form class="button" method="get" action="Home.jsp">
	<input type="submit" name="back" value="Home" >
	</form>
	<h1>Search Charities-Results</h1>
	<%
	ParseData parser = new ParseData();
	String token = parser.getToken("dc669d4e-08ee-4455-a253-ba233be22ba7", "c0440e81-8596-4b3c-af3a-aa73a6eb0e4e");
	token = "7c301047-1c32-4914-8cd7-7350d592d3bb";
	String button = request.getParameter("submit");
	if(button !=null){
		String pageNum = request.getParameter("pageNum");
		String numPage = request.getParameter("numPage");
		String charityType = request.getParameter("charityType");
		String charitySize = request.getParameter("charitySize");
		String keyword = request.getParameter("keyword");
		String country = request.getParameter("country");
		String provState = request.getParameter("provState");

		List<SearchCharities> sc = parser.searchCharities(token, pageNum, numPage, charitySize, keyword, charityType, country, provState);
		if(sc != null){
			out.println("<div>");
			out.println("Total Results: "+sc.get(0).getTotalResults()+"<br/>");
			out.println("Total Page: "+sc.get(0).getTotalPages()+"<br/>");
			out.println("On Page: "+sc.get(0).getOnPage()+"<br/>");
			out.println("</div>");
			%>
			<table class="table1">
				<tr><th>regNum</th>
				<th>Name</th>
				<th>Description</th>
				<th>Type</th>
				<th>TypeID</th>
				<th>ProvState</th>
				<th>City</th>
				<th>Country</th>
				<th>CharitySize</th>
				<th>LogoURL</th>
				<th>OperatingCountry</th>
				<th>NameOfStaff</th>
				<th>Email</th>
				<th>URL</th>
				<th>Phone</th>
			</tr>
			<%
			for(SearchCharities i: sc){
				out.println("<tr>");
				out.println("<th>"+i.getregNum()+"</th>");
				out.println("<th>"+i.getName()+"</th>");
				out.println("<th>"+i.getDescription()+"</th>");
				out.println("<th>"+i.getType()+"</th>");
				out.println("<th>"+i.getTypeID()+"</th>");
				out.println("<th>"+i.getProvState()+"</th>");
				out.println("<th>"+i.getCity()+"</th>");
				out.println("<th>"+i.getCountry()+"</th>");
				out.println("<th>"+i.getCharitySize()+"</th>");
				out.println("<th>"+i.getLogoURL()+"</th>");
				out.println("<th>"+i.getOperatingCountry()+"</th>");
				out.println("<th>"+i.getContactInfoDetails().getNameOfStaff()+"</th>");
				out.println("<th>"+i.getContactInfoDetails().getEmail()+"</th>");
				out.println("<th>"+i.getContactInfoDetails().getURL()+"</th>");
				out.println("<th>"+i.getContactInfoDetails().getPhone()+"</th>");

				out.println("</tr>");
			}
			out.println("</table>"); 

		}  
	}
	
	%>
</body>
</html>