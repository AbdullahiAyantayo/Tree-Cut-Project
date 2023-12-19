<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>David Smith's View</title>
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

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr {
            text-align: center;
        }
    </style>
</head>

<body>
    <div align="center">
        <a href="login.jsp" target="_self">Logout</a><br><br>

        <div>
            <h1>THIS IS DAVID SMITH'S VIEW</h1>
            <table border="1" cellpadding="6">
                <caption><h2>List of Quotes</h2></caption>
                <tr>
                    <th>ClientID</th>
                    <th>Issue Date</th>
                    <th>Time</th>
                    <th>Smith Note</th>
                    <th>Client Note</th>
                    <th>Price</th>
                    <th>Quote ID</th>
                    <th>Bill ID</th>
                    <th>Request ID</th>
                    <th>Attach Note</th>
                    <th>Print</th>
                </tr>
                <c:forEach var="quotes" items="${listQuotes}">
                    <tr>
                        <td><c:out value="${quotes.clientID}" /></td>
                        <td><c:out value="${quotes.date}" /></td>
                        <td><c:out value="${quotes.time}" /></td>
                        <td><c:out value="${quotes.smithNote}" /></td>
                        <td><c:out value="${quotes.clientNote}" /></td>
                        <td><c:out value="${quotes.price}" /></td>
                        <td><c:out value="${quotes.quoteID}" /></td>
                        <td><c:out value="${quotes.billID}" /></td>
                        <td>
                            <a href="requestView?id=<c:out value='${quotes.requestID}' />"><c:out value='${quotes.requestID}' /></a>
                        </td>
                        <td>
                            <a href="createQuoteNote?id=<c:out value='${quotes.quoteID}' />">Post Note</a>
                        </td>
                        <td>
                            <a href="quotePrint?id=<c:out value='${quotes.quoteID}' />">Print</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>

</html>
