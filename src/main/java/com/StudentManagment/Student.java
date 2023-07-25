package com.StudentManagment;

public class Student {
	String rno,name,fname,phn;
	int tamt,pamt;
	public Student(String rno, String name, String fname, int tamt, int pamt, String phn) {
		this.rno = rno;
		this.name = name;
		this.fname = fname;
		this.phn = phn;
		this.tamt = tamt;
		this.pamt = pamt;
	}
	public String getRno() {
		return rno;
	}
	public String getName() {
		return name;
	}
	public String getFname() {
		return fname;
	}
	public String getPhn() {
		return phn;
	}
	public int getTamt() {
		return tamt;
	}
	public int getPamt() {
		return pamt;
	}

}
