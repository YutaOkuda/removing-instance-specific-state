<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("/");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Remove Session State Lab - Profile Page</title>
</head>
<body>
Instance number: <%= System.getenv("CF_INSTANCE_INDEX") %>

<h1>Your Profile</h1>
<div>Username:</div>
<div><%= session.getAttribute("username") %>
</div>
<div>Phone Number:</div>palstudent@pivotal.io
<div><%= session.getAttribute("phoneNumber") %>
</div>

<form action="logout" method="post">
    <input type="submit" value="Logout">
</form>
</body>
</html>
