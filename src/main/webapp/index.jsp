<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Factorial of a Number</title>
</head>
<body>
<form name="f1" method="post" action="5.jsp">
	Enter a Number: <input type="text" name="n"/>
	<br/>
	<input type ="submit" value="Find Factorial"/>
</form>

<%!
	int find_factorial(int n)
	{
		if(n==0)
			return 1;
		return n*find_factorial(n-1);
	}
%>
<%
	String inp=request.getParameter("n");
	if(inp!=null)
	{
		int px=Integer.parseInt(inp);
		int fact=find_factorial(px);
		out.println("<br/>Factorial = " + fact);
	}
%>
</body>
</html>
