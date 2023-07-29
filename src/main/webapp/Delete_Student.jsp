<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>DeletePage</title>
        <style>
            body
            {
                font-family:'Times New Roman', Times, serif;
                  background: linear-gradient(120deg, #2980b9, #8e44ad);
                background-image: fill;
                height: 100vh;
                overflow: hidden;
            }
            .center
            {
                position: absolute;
                padding: 5px 10px;
                border-radius: 10px;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 300px;
                height: 300px;
                outline: 2px solid black;
            }
            .center h1
            {
                text-align: center;
                padding: 0 0 10px 0;
                border-bottom: 1px solid black;
            }
            .center form
            {
                padding: 10px 30px;
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
            ::placeholder 
            {
                color: black;
                opacity: 0.7;
            }
            input[type="submit"]
            {
                width: 100%;
                height: 40px;
                border: 1px solid;
                background:royalblue;
                font-size: 18px;
                color: #fff;
                cursor: pointer;
                border: 1px solid black;
            }
            input[type="submit"]:hover
            {
                border: 2px solid black;
                transition: 0.2s ease;
                background-color: darkblue;
            }
        </style>
    </head>
    <body>
        <div class="center">
            <h1>Deletion</h1>
            <form action="delete_student" method="post">
                <div class="txt_field">
                    <input type="text" placeholder="Roll Number" name="roll_no" required>
                </div>   
                <input type="submit" value="Delete">
            </form>
        </div>
    </body>
</html>
