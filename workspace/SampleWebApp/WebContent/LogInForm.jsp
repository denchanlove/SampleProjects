<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowDateJSP</title>
<!-- <script type="text/javascript">
	function check()
	{
		if (document.getElementsById("id").value == "sample" && document.getElementsById("pass").value == "sample")
		{
			return true;
		}
		return false;
	}
</script> -->
</head>
<body>
<%=session.getAttribute("id") %>
<form action="Save">
    <input type="text" size="10" name="Name">
    <input type="text" size="10" name="ID">
	<input type="submit" size="10" name="LogIn">
</form>
</body>
</html>