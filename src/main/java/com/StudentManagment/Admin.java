package com.StudentManagment;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static String PASSWORD;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		String action = request.getServletPath();
		RequestDispatcher rd=null;
		switch(action)
		{
		case "/Admin":
			 rd= request.getRequestDispatcher("Admin_Page.jsp");
			rd.forward(request, response);
			break;
		case "/Student_Insert":
			String rno=request.getParameter("roll_no");
			String n=request.getParameter("name");
			String fn=request.getParameter("fname");
			int ta=Integer.parseInt(request.getParameter("total_fee"));
			int pa=Integer.parseInt(request.getParameter("amount_paid"));
			String p=request.getParameter("phone_num");
			try {
				insert(rno,n,fn,ta,pa,p);
				rd= request.getRequestDispatcher("Admin_Page.jsp");
				rd.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		}
	}

	private void insert(String rno, String n, String fn, int ta, int pa, String p) throws ClassNotFoundException, SQLException {
		DataBase db=new DataBase("Chenna@23");
		db.insert(rno, n, fn, ta, pa, p);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	


}
