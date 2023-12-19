<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Client Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        header {
            background-color: #3366cc;
            color: white;
            text-align: center;
            padding: 15px 0;
        }

        h1 {
            margin: 0;
        }

        main {
            max-width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #3366cc;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <header>
        <h1>Welcome! You have been successfully logged in</h1>
        <a href="login.jsp" target="_self">Logout</a><br><br>
        <p>All the quotes.</p>
    </header>

    <main>
        <div align="center">
            <table>
                <caption><h2>List of Quotes</h2></caption>
                <tr>
                    <th>Client ID</th>
                    <th>Issue Date</th>
                    <th>Time</th>
                    <th>Smith Note</th>
                    <th>Client Note</th>
                    <th>Price</th>
                    <th>Quote ID</th>
                    <th>Bill ID</th>
                    <th>Request ID</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="quote" items="${listQuotes}">
                    <tr style="text-align:center">
                        <td><c:out value="${quote.clientID}" /></td>
                        <td><c:out value="${quote.date}" /></td>
                        <td><c:out value="${quote.time}" /></td>
                        <td><c:out value="${quote.smithNote}" /></td>
                        <td><c:out value="${quote.clientNote}" /></td>
                        <td><c:out value="${quote.price}" /></td>
                        <td><c:out value="${quote.quoteID}" /></td>
                        <td><c:out value="${quote.billID}" /></td>
                        <td>
                            <a href="requestView?id=<c:out value='${quote.requestID}' />">
                                <c:out value='${quote.requestID}' />
                            </a>
                        </td>
                        <td>
                            <a href="createQuoteNote?id=<c:out value='${quote.quoteID}' />">Post Note</a> |
                            <a href="quoteAgree?id=<c:out value='${quote.quoteID}' />">Agree</a> |
                            <a href="quoteQuit?id=<c:out value='${quote.quoteID}' />">Quit</a> |
                            <a href="quotePrint?id=<c:out value='${quote.quoteID}' />">Print</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </main>
</body>

</html>
