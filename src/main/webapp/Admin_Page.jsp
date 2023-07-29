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
<title>AdminPage</title>
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
    <table class="center">
 			<tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Father Name</th>
                <th>Total Amount</th>
                <th>Payment</th>
                <th>Phone Number</th>
            </tr>  
              <%	
	ResultSet rs=null;
	ArrayList<Student> st = new ArrayList<>();
	Student s1=null;
	DataBase db=null;
	//out.println(ps);
	try {
		db=new DataBase("Chenna@23");
		rs=db.show();
		while(rs.next())
		{
			s1=new Student(rs.getString("roll_no"),rs.getString("name"),rs.getString("father_name"),rs.getInt("total_fee"),rs.getInt("amount_paid"),rs.getString("phone_num"));
			st.add(s1);
		}
		for(Student s:st)
		{%>
			<tr><td><%=s.getRno()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getFname()%></td>
			<td><%=s.getTamt()%></td>
			<td><%=s.getPamt()%></td>
			<td><%=s.getPhn()%></td>
	</tr>
	<%} } catch (ClassNotFoundException | IOException e) 
	{
	e.printStackTrace();
	}%>
  
</table>
</body>
</html>