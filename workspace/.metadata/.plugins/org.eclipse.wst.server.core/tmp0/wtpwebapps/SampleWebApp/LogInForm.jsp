<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
		<title>LogIn</title>
		<script type="text/javascript">
			function check(form)
			{
				if (document.getElementById("id").value != "sample")
				{
					alert("登録されていないユーザIDです。")
				}
				else if(document.getElementById("pass").value != "sample")
				{
					alert("パスワードが違います。");
				}
				else
				{
					 form.submit();
				}
			}
		</script>

	</head>
	<body>
	<form action="LoadEmpList">
    	<input type="text" size="10" name="ID" id="id">
	    <input type="text" size="10" name="Pass" id="pass">
	    <input type="button" size="10" name="LogIn" id="login" value="ログイン" onclick="check(this.form)">
	</form>
	</body>
</html>