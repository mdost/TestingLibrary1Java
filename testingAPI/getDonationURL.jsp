<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.parseData.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Donation URL</title>
<link rel="stylesheet" type="text/css" href="result.css">
</head>
<body>
	<form class="button" method="get" action="Home.jsp">
	<input type="submit" name="back" value="Home" >
	</form>
	<h1>Result:</h1>
	<%
	ParseData parser = new ParseData();
	String token = parser.getToken("dc669d4e-08ee-4455-a253-ba233be22ba7", "c0440e81-8596-4b3c-af3a-aa73a6eb0e4e");
	token = "7c301047-1c32-4914-8cd7-7350d592d3bb";
	String button = request.getParameter("submit");
	if(button != null){
		String isAnonymous = request.getParameter("isAnonymous");
	
			Info obj = new Info();
			obj.setregNum(request.getParameter("regNum"));
			obj.setProjectType(request.getParameter("projectType"));
			obj.setFirstName(request.getParameter("fName"));
			obj.setLastName(request.getParameter("lName"));
			obj.setEmail(request.getParameter("email"));
			obj.setAddress(request.getParameter("address"));
			obj.setPostalZip(request.getParameter("postalZip"));
			obj.setProvState(request.getParameter("provState"));;
			obj.setBackURL(request.getParameter("backURL"));
			obj.setRedirectURL(request.getParameter("redirectURL"));
			
			if(isAnonymous != null){
				obj.setIsAnonymous(true);
			}else
				obj.setIsAnonymous(false);
			
			obj.setAmount(request.getParameter("amount"));
			obj.setCity(request.getParameter("city"));
			obj.setCountry(request.getParameter("country"));
			obj.setCurrency(request.getParameter("currency"));
			obj.setClientUnique(request.getParameter("clientUnique"));
			obj.setClientfee(request.getParameter("clientFee"));
			obj.setInHonourOf(request.getParameter("honour"));
			obj.setInMemorialOf(request.getParameter("memorial"));
			DonationURL du = parser.getDonationURL(token, obj);
			if(du != null){
				out.println("Expires: "+du.getExpires()+"<br/>");
				out.println("Donation URL: "+du.getDonationURL()+"<br/>");
			}else{
				out.println("object is null. Please enter required parameters");
			}
	}
	
	%>

</body>
</html>