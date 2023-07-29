<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <style>
            body
            {
                margin: 0;
                padding: 0;
                font-family: montserrat;
                background: linear-gradient(120deg, #2980b9, #8e44ad);
                background-image: fill;
                height: 100vh;
                overflow: hidden;            }
            .center
            {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 400px;
                background: white;
                border: white;
                outline: 3px solid black;
                opacity: 0.7;
                padding:10px 10px;
            }
            .center h1
            {
                text-align: center;
                padding: 0 0 20px 0;
                border-bottom: 1px solid black;
            }
            .center form
            {
                padding: 0 40px;
                box-sizing: border-box;
            }
            form .txt_field
            {
                position: relative;
                border-bottom: 2px solid black;
                margin: 30px 0;
            }
            .txt_field input
            {
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            .txt_field label
            {
                position: absolute;
                top: 50%;
                left: 5px;
                color: black;
                transform: translateY(-50%);
                font-size: 16px;
                pointer-events: none;
            }
            .txt_field span::before
            {
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 100%;
                height: 2px;
                background: #2691d9;
            }
            input[type="submit"]
            {
                width: 100%;
                height: 50px;
                border: 1px solid;
                background: #2691d9;
                border-radius: 25px;
                font-size: 18px;
                color: black;
                font-weight: 700;
                cursor: pointer;
                outline: none;
            }
            input[type="submit"]:hover
            {
                border: 2px solid black;
                transition: 0.5s ease;
                color: white;
            }
        </style>
    </head>
    <body  >
        <div class="center">
            <h1>Registration</h1>
            <form action="Student_Insert"  method="post">
                <div class="txt_field">
                    <input type="text" placeholder="Roll No" name="roll_no" required>
                       
                </div>
                <div class="txt_field">
                    <input type="text" placeholder="Name" name="name" required>
                    
                </div>
                <div class="txt_field">
                    <input type="text" placeholder="Father Name" name="fname" required>
                         
                </div>
                <div class="txt_field">
                    <input type="text" placeholder="Total feee" name ="total_fee" required>
                       
                </div>
                <div class="txt_field">
                    <input type="text" placeholder="Amount paid" name="amount_paid" required>
                     
                </div>
                <div class="txt_field">
                    <input type="text" placeholder="Phone Number" name="phone_num" required>
                      
                </div>
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>

  