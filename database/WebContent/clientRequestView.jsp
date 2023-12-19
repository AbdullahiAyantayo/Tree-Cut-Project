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

        form {
            margin-bottom: 20px;
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
        <p>All the requests.</p>
    </header>

    <main>
        <form action="requestForm" align="center">
            <input type="submit" value="Start A Request" />
        </form>

        <div align="center">
            <table>
                <caption><h2>List of Requests</h2></caption>
                <tr>
                    <th>Client ID</th>
                    <th>Issue Date</th>
                    <th>Smith Note</th>
                    <th>Client Note</th>
                    <th>Request ID</th>
                    <th>Quote ID</th>
                    <th>Tree Count</th>
                    <th>Trees</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="request" items="${listRequest}">
                    <tr style="text-align:center">
                        <td><c:out value="${request.clientID}" /></td>
                        <td><c:out value="${request.date}" /></td>
                        <td><c:out value="${request.smithNote}" /></td>
                        <td><c:out value="${request.clientNote}" /></td>
                        <td><c:out value="${request.requestID}" /></td>
                        <td><c:out value="${request.quoteID}" /></td>
                        <td><c:out value="${request.treeCount}" /></td>
                        <td>
                            <a href="treeView?id=<c:out value='${request.requestID}' />">View Trees</a>
                        </td>
                        <td>
                            <a href="createRequestNote?id=<c:out value='${request.requestID}' />">Post Note</a> |
                            <a href="addTreeView?id=<c:out value='${request.requestID}' />">Add Tree</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </main>
</body>

</html>
