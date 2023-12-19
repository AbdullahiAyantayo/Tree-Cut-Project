<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced List of Bills</title>
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
        <p>Here is an enhanced list of all the bills.</p>
    </header>

    <main>
        <table>
            <caption><h2>List of Bills</h2></caption>
            <thead>
                <tr>
                    <th>Client ID</th>
                    <th>Bill ID</th>
                    <th>Issue Date</th>
                    <th>Due Date</th>
                    <th>Smith Note</th>
                    <th>Client Note</th>
                    <th>Price</th>
                    <th>Quote ID</th>
                    <th>Pay Date</th>
                    <th>Pay Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="bill" items="${listBills}">
                    <tr>
                        <td><c:out value="${bill.clientID}" /></td>
                        <td><c:out value="${bill.billID}" /></td>
                        <td><c:out value="${bill.issueDate}" /></td>
                        <td><c:out value="${bill.dueDate}" /></td>
                        <td><c:out value="${bill.smithNote}" /></td>
                        <td><c:out value="${bill.clientNote}" /></td>
                        <td><c:out value="${bill.price}" /></td>
                        <td>
                            <a href="quoteView?id=<c:out value='${bill.quoteID}' />">
                                <c:out value='${bill.quoteID}' />
                            </a>
                        </td>
                        <td><c:out value="${bill.payDate}" /></td>
                        <td><c:out value="${bill.payStatus}" /></td>
                        <td>
                            <a href="createBillNote?id=<c:out value='${bill.billID}' />">Post Note</a> |
                            <a href="billAgree?id=<c:out value='${bill.billID}' />">Agree</a> |
                            <a href="billQuit?id=<c:out value='${bill.billID}' />">Quit</a> |
                            <a href="billPrint?id=<c:out value='${bill.billID}' />">Print</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</body>

</html>
