<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Enhanced Client Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        h1, a {
            text-align: center;
            color: #3366cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        form {
            display: inline-block;
            margin: 10px;
        }
    </style>
</head>

<body>
    <h1>Welcome! You have been successfully logged in</h1>
    <a href="login.jsp" target="_self">Logout</a><br><br>
    <p>Select Your View</p>

    <div align="center">
        <form action="pendRequest">
            <input type="submit" value="See Pending Requests" />
        </form>

        <br>
        <br>
        <br>

        <form action="seeQuotes">
            <input type="submit" value="See Customer Quotes" />
        </form>

        <br>
        <br>
        <br>

        <form action="seeBills">
            <input type="submit" value="See Customer Bills" />
        </form>
    </div>
</body>

</html>
