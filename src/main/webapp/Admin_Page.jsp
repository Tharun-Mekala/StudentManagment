<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.StudentManagment.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        .button1
        {
            background-color:black;
            color:#fff;
            padding: 15px 15px;
            cursor: pointer;
            display: inline-block;
            margin: 10px 10px;
            text-decoration: none;
        }
        .button2
        {
            background-color:black;
            color:#fff;
            padding: 15px 15px;
            cursor: pointer;
            display: inline-block;
            margin: 10px 10px;
            text-decoration: none;
        }
        table,th
        {
            border: 1px solid black;
            border-spacing: 0;
        }
        th
        {
            background-color: lightpink;
            text-align: center;
        }
        table
        {
            width: 100%;
        }
        </style>
</head>
<body>
 <a href="Student_Form.jsp" target="_blank" class="button1">Add Student</a>
        <a href="" class="button2">Delete Student</a>
   <table class="table table-bordered">
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