<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>All Tree list</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        h2, a {
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
        <table border="1" cellpadding="5">
            <caption><h2>List of Trees</h2></caption>
            <tr>
                <th>Image 1</th>
                <th>Image 2</th>
                <th>Image 3</th>
                <th>Address</th>
                <th>Distance</th>
                <th>Width</th>
                <th>Height</th>
                <th>Tree ID</th>
                <th>Request ID</th>
                <th>Cut Status</th>
                <th>Cut Date</th>
                <th>Mark Cut</th>
            </tr>
            <c:forEach var="trees" items="${listTree}">
                <tr>
                    <td><c:out value="${trees.image1}" /></td>
                    <td><c:out value="${trees.image2}" /></td>
                    <td><c:out value="${trees.image3}" /></td>
                    <td><c:out value="${trees.address}" /></td>
                    <td><c:out value="${trees.distance}" /></td>
                    <td><c:out value="${trees.width}" /></td>
                    <td><c:out value="${trees.height}" /></td>
                    <td><c:out value="${trees.treeID}" /></td>
                    <td><c:out value="${trees.requestID}" /></td>
                    <td><c:out value="${trees.cutStatus}" /></td>
                    <td><c:out value="${trees.date}" /></td>
                    <td>
                        <a href="cutTree?id=<c:out value='${trees.treeID}' />">Cut</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>

</html>
