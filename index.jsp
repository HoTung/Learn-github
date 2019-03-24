<%-- 
    Document   : index
    Created on : Mar 24, 2019, 10:05:24 PM
    Author     : khoab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            Username: <input type="text" name="txtUsername"/>
            <br/>
            Password: <input type="password" name="txtPassword"/>
	    <br/>
            <font color="red">
            ${requestScope.INVALID.passwordError}
            </font>
	    Fullname: <input type="text" name="txtFullname"/>
            <br/>
            Role: <input type="text" name="txtRole"/>
            <br/>
            <input type="submit" name="action" value="Login"/>
        </form>
    </body>
</html>
