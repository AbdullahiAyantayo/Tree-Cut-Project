<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Enhanced Client Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        div {
            text-align: center;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #3366cc;
        }

        a {
            text-decoration: none;
            color: #3366cc;
        }

        p {
            margin-bottom: 20px;
        }

        form {
            display: inline-block;
            margin: 10px;
        }

        input[type="submit"] {
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div>
        <h1>Welcome! You have been successfully logged in</h1>
        <a href="login.jsp" target="_self">Logout</a><br><br>
        <p>Select Your View</p>

        <form action="seeRequests">
            <input type="submit" value="See Your Requests" />
        </form>

        <form action="seeQuotes">
            <input type="submit" value="See Your Quotes" />
        </form>

        <form action="seeBills">
            <input type="submit" value="See Your Bills" />
        </form>
    </div>
</body>

</html>
