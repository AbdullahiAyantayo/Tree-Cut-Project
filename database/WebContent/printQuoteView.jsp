<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Quote Print Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        h1,
        h2 {
            text-align: center;
            color: #3366cc;
        }

        a {
            display: block;
            margin-top: 20px;
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

        th,
        td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>
    <div align="center">
        <a href="login.jsp" target="_self">Logout</a><br><br>
        <p>Here is your Quote print</p>
    </div>

    <div align="center">
        <table border="1" cellpadding="6">
            <caption>
                <h2>Owner Info</h2>
            </caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
            <tr style="text-align:center">
                <td>110</td>
                <td>David Smith</td>
            </tr>
        </table>

        <table border="1" cellpadding="6">
            <caption>
                <h2>Client Info</h2>
            </caption>
            <tr>
                <th>Client ID</th>
                <th>Client Name</th>
                <th>Quote ID</th>
                <th>Estimated Cut Time</th>
                <th>Issue Date</th>
                <th>Price</th>
                <th>Request ID</th>
            </tr>
            <tr style="text-align:center">
                <td>${quote.clientID}</td>
                <td>${user.firstName} ${user.lastName}</td>
                <td>${quote.quoteID}</td>
                <td>${quote.time}</td>
                <td>${quote.date}</td>
                <td>${quote.price}</td>
                <td>
                    <a href="requestView?id=<c:out value='${quote.requestID}' />">${quote.requestID}</a>
                </td>
            </tr>
        </table>

        <table border="1" cellpadding="6">
            <caption>
                <h2>Quote Replies</h2>
            </caption>
            <tr>
                <th>Client ID</th>
                <th>Reply ID</th>
                <th>Note</th>
                <th>Time Posted</th>
            </tr>
            <c:forEach var="responses" items="${listResponses}">
                <tr style="text-align:center">
                    <td><c:out value="${responses.clientID}" /></td>
                    <td><c:out value="${responses.replyID}" /></td>
                    <td><c:out value="${responses.reply}" /></td>
                    <td><c:out value="${responses.issueDate}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>

</html>
