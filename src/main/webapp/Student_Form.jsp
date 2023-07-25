<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 	<style>
        form .input_field label
        {
            padding: 30px;
            margin: 10px 0 10px 0;
            border: none;
        }
        .button
        {
            background-color:black;
            color:#fff;
            padding: 15px 15px;
            cursor: pointer;
            display: inline-block;
            margin: 10px 10px;
            text-decoration: none;
        }
    </style>
</head>
<body>
	 <form action="Student_Insert"  method="post">
            <div class="input_field">
                <label><b>Roll Number</b></label>
                <input type="text" class="input" placeholder="Enter Roll No" id="roll_no" name="roll_no" required>
                <br/>
                <br/>
            </div>
            <div class="input_field">
                <label><b>Name</b></label>
                <input type="text" class="input" placeholder="Enter Your Name" id="name" name="name" required>
                <br/>
                <br/>
            </div>
            <div class="input_field">
                <label><b>Father Name</b></label>
                <input type="text" class="input" placeholder="Enter Your Father Name" id="fname" name="fname" required>
                <br/>
                <br/>
            </div>
            <div class="input_field">
                <label><b>Total Fee</b></label>
                <input type="text" class="input" placeholder="Enter Total Fee" id="total_fee" name ="total_fee" required>
                <br/>
                <br/>
            </div>
            <div class="input_field">
                <label><b>Amount Paid</b></label>
                <input type="text" class="input" placeholder="Enter The Amount Paid" id="amount_paid" name="amount_paid" required>
                <br/>
                <br/>
            </div>
            <div class="input_field">
                <label><b>Phone Number</b></label>
                <input type="text" class="input" placeholder="Enter The Phone Number" id="phone_num" name="phone_num" required>
                <br/>
                <br/>
            </div> 
           <input type="submit" value="Add">
        </form>
</body>
</html>