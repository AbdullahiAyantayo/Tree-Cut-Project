<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Root page</title>
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
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th,
        td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            display: block;
            margin-top: 10px;
            color: #3366cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        h1,
        h2 {
            text-align: center;
        }
    </style>
</head>

<body>

    <div>
        <form action="initialize">
            <input type="submit" value="Initialize the Database" />
        </form>
        <a href="login.jsp" target="_self">Logout</a><br><br>

        <form action="seeStats">
            <input type="submit" value="See Customer Statistics" />
        </form>

        <h1>THIS IS ROOT VIEW</h1>

        <c:forEach var="table" items="${tables}">
            <table border="1" cellpadding="6">
                <caption><h2>${table.caption}</h2></caption>
                <c:forEach var="column" items="${table.columns}">
                    <th>${column}</th>
                </c:forEach>
                <c:forEach var="row" items="${table.rows}">
                    <tr style="text-align:center">
                        <c:forEach var="value" items="${row}">
                            <td>${value}</td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
            <br>
        </c:forEach>
    </div>

</body>

</html>
