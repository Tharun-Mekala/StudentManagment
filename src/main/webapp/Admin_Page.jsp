<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.StudentManagment.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
        .button_tag
        {
            background-color:white;
            color:#fff;
            padding: 15px 15px;
            cursor: pointer;
            display: inline-block;
            margin: 10px 10px;
            text-decoration: none;
           	margin-left:600px;
        }
        
        table,th,td
        {
            border: 2px solid black;
            border-spacing: 0;
        }
        td
        {
            background-color: #ccffff;
            text-align: center;
        }
        th {
             background-color: #00CCCC;
            padding: 10px;
            text-align: center;
        }
      	table{
      		width:75%;
      		
      	}
      	table.center
      	{
      		margin-left:auto;
      		margin-right:auto;
      	}
        </style>
</head>
<body>
	<div class="button_tag">
        <button><a href="Student_Form.jsp" >Add Student</a></button>
        <button><a href="Delete_Student.jsp">Delete Student</a></button>
	</div>
	<form action="Search" method="post">
	<input type="text" placeholder="Search...." name="search">
	 <input type="submit" value="search">
	</form>
    <table class="center">
 			<tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Father Name</th>
                <th>Total Amount</th>
                <th>Payment</th>
                <th>Phone Number</th>
            </tr>  
            <tbody> 
			<c:forEach items="list" var="s">
			<tr>
			<td><c:out value="${s.getName() }"/></td>
			</tr>
			</c:forEach>	
			</tbody>
  
</table>
</body>
</html>