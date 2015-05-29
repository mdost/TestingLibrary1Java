<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.parseData.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testing ParseData Jar</title>
<link rel="stylesheet" type="text/css" href="result.css">
</head>
<body>
	<form class="button" method="get" action="Home.jsp">
		<input type="submit" name="back" value="Home" >
	</form>
	<h1>Testing Library ParseData.jar</h1>
	<p>
		<%--br is for new line character, this is for comment--%>
		<br/>Please enter the following parameters:<br/>

		<% 
			String button = request.getParameter("enter");
				
			if(button != null && button.equalsIgnoreCase("enter")){
				String command = request.getParameter("method");
				if(command != null){
					//out.println(command);
					if(command.equalsIgnoreCase("getFinancialDetails")){ %>
						<form method="get" action="Result.jsp" enctype=text/plain>
						Registration Number <span class="style">*</span>  <input type="text" name="parameter" id="regNum"><br/>
						<input type="hidden" name="hiddenValue" value="getFinancialDetails">
						<input type="submit" name="submit" value="Enter">
						</form>
				<% 	
					}else if(command.equalsIgnoreCase("getCharityDetails")){ %>
						
						<form method="get" action="Result.jsp" enctype=text/plain>
						Registration Number <span class="style">*</span><input type="text" name="parameter" id="regNum"><br/>
						<input type="hidden" name="hiddenValue" value="getCharityDetails">
						<input type="submit" name="submit" value="Enter">
						</form>
				<% 	
						
					}else if(command.equalsIgnoreCase("getCharitySalaries")){ %>
						
						<form method="get" action="Result.jsp" enctype=text/plain>
						Registration Number <span class="style">*</span><input type="text" name="parameter" id="regNum">
						<input type="hidden" name="hiddenValue" value="getCharitySalaries">
						<input type="submit" name="submit" value="Enter">
						</form>
				<% 	
						
					}else if(command.equalsIgnoreCase("getCharityFiles")){ %>
					
					<form method="get" action="Result.jsp" enctype=text/plain>
					Registration Number <span class="style">*</span> <input type="text" name="parameter" id="regNum">
					<input type="hidden" name="hiddenValue" value="getCharityFiles">
					<input type="submit" name="submit" value="Enter">
					</form>
			<% 	
					
					}else if(command.equalsIgnoreCase("getCharityProjects")){ %>
					
					<form method="get" action="Result.jsp" enctype=text/plain>
					Registration Number <span class="style">*</span> <input type="text" name="parameter" id="regNum">
					<input type="hidden" name="hiddenValue" value="getCharityProjects">
					<input type="submit" name="submit" value="Enter">
					</form>
			<% 	
					
					}else if(command.equalsIgnoreCase("getDonationURL")){
						//request.setAttribute("hiddenValue", "getDonationURL");
						%>
						
						<form method="get" action="getDonationURL.jsp" enctype=text/plain>
						Registration Number <span class="style">*</span><input type="text" name="regNum" ><br/>
						Project Type <span class="style">*</span><input type="text" name="projectType" ><br/>
						Amount $ <span class="style">*</span><input type="text" name="amount" ><br/>
						Currency <span class="style">*</span><input type="text" name="currency" ><br/>
						Back URL <span class="style">*</span><input type="text" name="backURL" ><br/>
						Redirect URL <span class="style">*</span><input type="text" name="redirectURL" ><br/>
						<input type="radio" name="isAnonymous" value="isAnonymous"> Anonymous <br/>
						<em>*If donation is not anonymous, then the personal info is required, otherwise it is optional.</em><br/><br/>
						First Name <input type="text" name="fName" ><br/>
						Last Name <input type="text" name="lName" ><br/>
						Email <input type="text" name="email"><br/>
						Address <input type="text" name="address" ><br/>
						Postal/Zip <input type="text" name="postalZip" ><br/>
						City <input type="text" name="city" ><br/>
						Province/State <input type="text" name="provState" ><br/>
						Country <input type="text" name="country" ><br/>
						<em>*Following info is optional</em><br/><br/>
						
						Client Fee <input type="text" name="clientFee"><br/>
						Client Unique <input type="text" name="clientUnique"><br/>
						Note <input type="text" name="note"><br/>
						In Memorial of <input type="text" name="memorial"><br/>
						In Honour of <input type="text" name="honour"><br/>
						
						<input type="submit" name="submit" value="Enter"><br/>
						</form>
				<% 	
					}else if(command.equalsIgnoreCase("searchCharities")){
%>
						
						<form method="get" action="searchCharities.jsp" enctype=text/plain>
						<em>*Following fields are required</em><br/>
						Page # <input type="text" name="pageNum" ><br/>
						Num/page <input type="text" name="numPage" ><br/><br/>
						<em>*One of the following must be filled</em><br/>
						Charity Size <input type="text" name="charitySize" ><br/>
						Keyword <input type="text" name="keyword" ><br/>
						Charity Type <input type="text" name="charityType" ><br/><br/>
						<em>*Following fields are optional</em><br/>
						Country <input type="text" name="country" ><br/>
						Province/State <input type="text" name="provState" ><br/>
						<input type="submit" name="submit" value="Enter"><br/>
						</form>
						
				<%
					}else if(command.equalsIgnoreCase("getCharityType")){
						HttpSession value = request.getSession(false);
						value.setAttribute("hiddenValue", "getCharityType");
						response.sendRedirect("Result.jsp");
					}else if(command.equalsIgnoreCase("getProvState")){ %>
						
						<form method="get" action="Result.jsp" enctype=text/plain>
						Country <input type="text" name="parameter" id="country">
						<input type="hidden" name="hiddenValue" value="getProvState">
						<input type="submit" name="submit" value="Enter">
						</form>
				<% 	
					}
				}else{
					out.println("Please select an item from the list shown above.<br/>");
				}
			}
			
			
			
			
			//out.println("Token: "+token);
		%>
	</p>
</body>
</html>