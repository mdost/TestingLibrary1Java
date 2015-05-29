<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.parseData.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="result.css">
</head>
<body>
	<form class="button" method="get" action="Home.jsp">
	<input type="submit" name="back" value="Home" >
	</form>
	
	<%
	ParseData parser = new ParseData();
	String token = parser.getToken("dc669d4e-08ee-4455-a253-ba233be22ba7", "c0440e81-8596-4b3c-af3a-aa73a6eb0e4e");
	token = "7c301047-1c32-4914-8cd7-7350d592d3bb";
	
	String button2= request.getParameter("submit");
	String value;
	if(session.getAttribute("hiddenValue") != null)	{
		value = session.getAttribute("hiddenValue").toString();
	}else{
		value ="";
	}
	out.println("<h1>Result:</h1>");
	if(button2 != null){
		String hiddenValue = request.getParameter("hiddenValue");
		String text = request.getParameter("parameter");

		if(text != null){
			if(hiddenValue.equalsIgnoreCase("getFinancialDetails")){
				List<FinancialData> fd = parser.getFinancialDetails(token, text);
				if(fd != null){
			%>
			<table class="table1">
			<tr><th>Fiscal Year</th><th>Primary Revenue</th><th>Gifts No Receipts</th><th>Rev Government</th>
				<th>Other Revenue</th>
				<th>Total Revenue</th>
				<th>Exp Charitable Programs</th>
				<th>Exp Fundraising</th>
				<th>ExpMgmtAdmin</th>
				<th>Exp Total</th>
				<th>Profit loss</th>
				<th>Cash</th>
				<th>LTI</th>
				<th>Other Assests</th>
				<th>Total Assets</th>
				<th>Accts Payable</th>
				<th>Def Revenue</th>
				<th>Other Liabilities</th>
				<th>Total Liabilities</th>
			</tr>
			<%
				for(FinancialData i : fd){				
					out.println("<tr>");
					out.println("<th>"+i.FiscalYear+"</th>");
					out.println("<th>"+i.PrimaryRevenue+"</th>");
					out.println("<th>"+i.GiftsNoReceipts+"</th>");
					out.println("<th>"+i.RevGovernment+"</th>");
					out.println("<th>"+i.OtherRevenue+"</th>");
					out.println("<th>"+i.TotalRevenue+"</th>");
					out.println("<th>"+i.ExpCharitablePrograms+"</th>");
					out.println("<th>"+i.ExpFundarising+"</th>");
					out.println("<th>"+i.ExpMgmtAdmin+"</th>");
					out.println("<th>"+i.ExpTotal+"</th>");
					out.println("<th>"+i.ProfitLoss+"</th>");
					out.println("<th>"+i.Cash+"</th>");
					out.println("<th>"+i.LTI+"</th>");
					out.println("<th>"+i.OtherAssets+"</th>");
					out.println("<th>"+i.TotalAssets+"</th>");
					out.println("<th>"+i.AcctsPayable+"</th>");
					out.println("<th>"+i.DefRevenue+"</th>");
					out.println("<th>"+i.OtherLiabilities+"</th>");
					out.println("<th>"+i.TotalLiabilities+"</th>");

					out.println("</tr>");
				
				}
				out.println("</table>");
				}else{
					out.println("null object returned. Please enter parameters.");
				}
			}else if(hiddenValue.equalsIgnoreCase("getCharityDetails")){
				CharityDetails cd = parser.getCharityDetails(token, text);
				if(cd != null){

				%>
			<table class="table1">
			<tr><th>Charity Name</th><th>Charity Opp Name</th><th>Charity Type</th>
				<th>Charitable Status</th>
				<th>Date Of Status</th>
				<th>Mission Statement</th>
				<th>Num Of Staff</th>
				<th>Major Donors</th>
				<th>Competitors loss</th>
				<th>Unique Blurb</th>
				<th>Total Num People Impacted</th>
				<th>ExistBlurb</th>
				<th>WhatIsNeeded</th>
				<th>Notes</th>
				<th>Charity Sub Type</th>
				<th>Update Status</th>
				<th>Donor Type</th>
				<th>Operating Budget</th><th>Num Of Volunteers</th><th>Logo Filename</th><th>Description</th>
				<th>Individual Programs</th><th>Operating Budget Year1</th><th>Operating Budget Year2</th><th>Operating Budget Year3</th>
				<th>Governance Policies</th><th>People Impacted By Organization</th><th>People Impacted By Programs</th><th>True Charity Value</th>
			</tr>
			<%
				out.println("<tr>");
				out.println("<th>"+cd.CharityName+"</th>");
				out.println("<th>"+cd.CharityOppName+"</th>");
				out.println("<th>"+cd.CharityType+"</th>");
				out.println("<th>"+cd.CharitableStatus+"</th>");
				out.println("<th>"+cd.DateOfStatus+"</th>");
				out.println("<th>"+cd.MissionStatement+"</th>");
				out.println("<th>"+cd.NumOfStaff+"</th>");
				out.println("<th>"+cd.MajorDonors+"</th>");
				out.println("<th>"+cd.Competitors+"</th>");
				out.println("<th>"+cd.UniqueBlurb+"</th>");
				out.println("<th>"+cd.TotalNumPeopleImpacted+"</th>");
				out.println("<th>"+cd.ExistBlurb+"</th>");
				out.println("<th>"+cd.WhatIsNeeded+"</th>");
				out.println("<th>"+cd.Notes+"</th>");
				out.println("<th>"+cd.CharitySubType+"</th>");
				out.println("<th>"+cd.UpdateStatus+"</th>");
				out.println("<th>"+cd.DonorType+"</th>");
				out.println("<th>"+cd.OperatingBudget+"</th>");
				out.println("<th>"+cd.NumOfVolunteers+"</th>");
				out.println("<th>"+cd.LogoFilename+"</th>");
				out.println("<th>"+cd.Description+"</th>");
				out.println("<th>"+cd.IndividualPrograms+"</th>");
				out.println("<th>"+cd.OperatingBudgetYear1+"</th>");
				out.println("<th>"+cd.OperatingBudgetYear2+"</th>");
				out.println("<th>"+cd.OperatingBudgetYear3+"</th>");
				out.println("<th>"+cd.GovernancePolicies+"</th>");
				out.println("<th>"+cd.PeopleImpactedByOrganization+"</th>");
				out.println("<th>"+cd.PeopleImpactedByPrograms+"</th>");
				out.println("<th>"+cd.TrueCharityValue+"</th>");

				out.println("</tr>");
				
				out.println("</table>");
				}else{
					out.println("null object returned. Please enter parameters.");
				}
			}else if(hiddenValue.equalsIgnoreCase("getCharitySalaries")){
				SalaryData sd = parser.getCharitySalaries(token, text);
				if(sd != null){

				%>
			<table class="table1">
				<tr><th>NumTop10_1_39999</th>
				<th>NumTop10_40K_79999</th>
				<th>NumTop10_80K_119999</th>
				<th>NumTop10_120K_159999</th>
				<th>NumTop10_160K_199999</th>
				<th>NumTop10_200K_249999</th>
				<th>NumTop10_250K_299999</th>
				<th>NumTop10_300K_349999</th>
				<th>NumTop10_350K_Plus</th>
				<th>NumPartTimeEmployees</th>
				<th>TotalCompensationPartTimeEmployees</th>
				<th>TotalCompensationOrganization</th>
			</tr>
			<%
				out.println("<tr>");
				out.println("<th>"+sd.get_NumTop10_1_39999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_40K_79999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_80K_119999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_120K_159999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_160K_199999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_200K_249999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_250K_299999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_300K_349999()+"</th>");
				out.println("<th>"+sd.get_NumTop10_350K_Plus()+"</th>");
				out.println("<th>"+sd.get_NumPartTimeEmployees()+"</th>");
				out.println("<th>"+sd.get_TotalCompensationPartTimeEmployees()+"</th>");
				out.println("<th>"+sd.get_TotalCompensationOrganization()+"</th>");

				out.println("</tr>");
				
				out.println("</table>");
				}else{
					out.println("null object returned. Please enter parameters.");
				}
			}else if(hiddenValue.equalsIgnoreCase("getProvState")){
				List<ProvState> ps = parser.getProvState(token, text);
				
				if(ps.get(0).getError().getStatus_code() == "100"){
				%>
			<table class="table1">
				<tr><th>ID</th>
				<th>Text</th>
			</tr>
			<%
				for(ProvState i: ps){
					out.println("<tr>");
					out.println("<th>"+i.getProvState().getID()+"</th>");
					out.println("<th>"+i.getProvState().getText()+"</th>");
					out.println("</tr>");
				}
				out.println("</table>");
				}else{
					out.println("Error: "+ps.get(0).getError().getStatus_code()+" "+ps.get(0).getError().getStatus_code_description());
				}
			}else if(hiddenValue.equalsIgnoreCase("getCharityFiles")){
				List<CharityFiles> cf = parser.getCharityFiles(token, text);
				if(cf != null){

				%>
			<table class="table1">
				<tr><th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>FileDate</th>
				<th>Type</th>
				<th>DownloadUrl</th>
			</tr>
			<%

				for(CharityFiles i: cf){
					out.println("<tr>");
					out.println("<th>"+i.getID()+"</th>");
					out.println("<th>"+i.getName()+"</th>");
					out.println("<th>"+i.getDescription()+"</th>");
					out.println("<th>"+i.getFileDate()+"</th>");
					out.println("<th>"+i.getType()+"</th>");
					out.println("<th>"+i.getDownloadUrl()+"</th>");
					out.println("</tr>");
				} 
				out.println("</table>");
				}else{
					out.println("null object returned. Please enter parameters.");
				}
			}else if(hiddenValue.equalsIgnoreCase("getCharityProjects")){
				List<CharityProjects> cp = parser.getCharityProjects(token, text);
				if(cp != null){

				%>
			<table class="table1">
				<tr><th>Project Name</th>
				<th>Date Modified</th>
				<th>VolHours</th>
				<th>StaffSal</th>
				<th>MaterialCost</th>
				<th>Overhead</th>
				<th>OtherCosts</th>
			</tr>
			<%
				for(CharityProjects i: cp){
					out.println("<tr>");
					out.println("<th>"+i.getProjectName()+"</th>");
					out.println("<th>"+i.getDateModified()+"</th>");
					out.println("<th>"+i.getVolHours()+"</th>");
					out.println("<th>"+i.getStaffSal()+"</th>");
					out.println("<th>"+i.getMaterialCost()+"</th>");
					out.println("<th>"+i.getOverhead()+"</th>");
					out.println("<th>"+i.getOtherCosts()+"</th>");
					out.println("</tr>");
				}
				out.println("</table>"); 
				}else{
					out.println("null object returned. Please enter parameters.");
				}
			}
		}
	}else if(value.equalsIgnoreCase("getCharityType")){
		 List<CharityType> ct = parser.getCharityType(token);
		 if(ct != null){

		 out.println("<ul class=\"bullets\"");

		 for(CharityType i : ct){
			out.println("<li>"+i.getType()+"</li>");
		 }

		 out.println("</ul>");
		 }else{
			out.println("null object returned. Please enter parameters.");
		}
	}else{
		out.println("Please enter the required parameters.");
	}
	
	%>

</body>
</html>