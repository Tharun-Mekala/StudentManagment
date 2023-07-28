package com.StudentManagment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBase {
	String url="jdbc:mysql://localhost:3306/studentmanagment";
	String usr="root";
	static Connection con;
	public DataBase(String psw) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,usr,psw);
	}
	public void insert(String r,String n,String fn,int tn,int pn,String phn) throws SQLException
	{
		PreparedStatement p=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
		p.setString(1, r);
		p.setString(2, n);
		p.setString(3, fn);
		p.setInt(4,tn);
		p.setInt(5, pn);
		p.setString(6,phn);
		int rows=p.executeUpdate();
		if(rows<=0)
			System.exit(0);
	}
	public void delete(String rno) throws SQLException
	{
		PreparedStatement p=con.prepareStatement("delete from student where roll_no=?");
		p.setString(1, rno);
		int rows=p.executeUpdate();
		if(rows<=0)
			System.exit(0);
	}
	public ResultSet show() throws SQLException
	{
		ResultSet rs=null;
		PreparedStatement p=con.prepareStatement("Select * from student");
		rs=p.executeQuery();
		return rs;
	}
}
