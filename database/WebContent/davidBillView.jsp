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

        h1 {
            text-align: center;
            color: #3366cc;
        }

        a {
            text-decoration: none;
            color: #3366cc;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            text-align: center;
            margin-top: 20px;
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
    <h1>Welcome! You have been successfully logged in</h1>
    <a href="login.jsp" target="_self">Logout</a><br><br>
    <p>All the bills.</p>

    <div align="center">
        <table border="1" cellpadding="6">
            <caption><h2>List of Bills</h2></caption>
            <tr>
                <th>ClientID</th>
                <th>Bill ID</th>
                <th>Issue Date</th>
                <th>Due Date</th>
                <th>Smith Note</th>
                <th>Client Note</th>
                <th>Price</th>
                <th>Pay Date</th>
                <th>Pay Status</th>
                <th>Quote ID</th>
                <th>Attach Note</th>
                <th>Print Bill</th>
            </tr>
            <c:forEach var="bills" items="${listBills}">
                <tr>
                    <td><c:out value="${bills.clientID}" /></td>
                    <td><c:out value="${bills.billID}" /></td>
                    <td><c:out value="${bills.issueDate}" /></td>
                    <td><c:out value="${bills.dueDate}" /></td>
                    <td><c:out value="${bills.smithNote}" /></td>
                    <td><c:out value="${bills.clientNote}" /></td>
                    <td><c:out value="${bills.price}" /></td>
                    <td><c:out value="${bills.payDate}" /></td>
                    <td><c:out value="${bills.payStatus}" /></td>
                    <td>
                        <a href="quoteView?id=<c:out value='${bills.quoteID}' />"><c:out value='${bills.quoteID}' /></a>
                    </td>
                    <td>
                        <a href="createBillNote?id=<c:out value='${bills.billID}' />">Post Note</a>
                    </td>
                    <td>
                        <a href="billPrint?id=<c:out value='${bills.billID}' />">Print</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>

</html>
