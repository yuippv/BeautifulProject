<%-- 
    Document   : Index.jsp
    Created on : Nov 14, 2019, 3:21:24 PM
    Author     : yypsx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--//font-family-->
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">

        <!--bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="/path/to/bootstrap.min.css">
        <script src="/path/to/jquery.min.js"></script>
        <script src="/path/to/bootstrap.min.js"></script>

        <link rel="stylesheet" href="/path/to/bootstrap.min.css">
        <script src="/path/to/jquery.min.js"></script>
        <script src="/path/to/bootstrap.min.js"></script>


        <link rel="stylesheet" href="navbar-fixed-right.min.css">
        <link rel="stylesheet" href="navbar-fixed-left.min.css">

        <title>Y2S Index</title>

        <style>
            body{

                font-family: 'Titillium Web', sans-serif;
                font-weight: 700; 
            }

            .profile{
                width:30%;
                margin : 10px;
            }
            .logo{
                width: 30%;
                margin: 10px;
                margin-left: 300px;
            }

            .helloName{
                vertical-align: middle; 
                display: inline-block;
                color: white;
            }   

            .bord{

                border: 10px solid #4D5784;
                width: 100%;
            }

            .navbar-fixed-left {
                width: 140px;
                position: fixed;
                border-radius: 0;
                height: 100%;
            }

            .navbar-fixed-left .navbar-nav > li {
                float: none;  /* Cancel default li float: left */
                width: 139px;
            }

            .navbar-fixed-left + .container {
                padding-left: 160px;
            }

            /* On using dropdown menu (To right shift popuped) */
            .navbar-fixed-left .navbar-nav > li > .dropdown-menu {
                /*                margin-top: -50px;*/
                /*                margin-left: 140px;*/

            </style>
        </head>
        <body>
            <div class="bord">
            <div class="container-fluid" style="background-color: #46007A;">
                
                    <div class="row">
                        <div class="col-4">
                            <img src="images/male.png" class="profile" style="vertical-align:middle">
                                <h1 class="helloName">Hello : ${account.firstname}</h1>
                            </div>
                            <div class="col-4"></div>
                            <div class="col-4">
                                <img src="images/logo.PNG" class="logo" alt="Y2S"> 
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="navbar navbar-inverse navbar-fixed-left" style="background-color:">
                    <a class="navbar-brand" href="#">Brand</a>
                    <ul class="nav navbar-nav">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Sub Menu1</a></li>
                                <li><a href="#">Sub Menu2</a></li>
                                <li><a href="#">Sub Menu3</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Sub Menu4</a></li>
                                <li><a href="#">Sub Menu5</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Link2</a></li>
                        <li><a href="#">Link3</a></li>
                        <li><a href="#">Link4</a></li>
                        <li><a href="#">Link5</a></li>
                    </ul>
                </nav>


                <!--       <h1>Y2S Academy</h1>
                        <a href="MyAccount.jsp">My Profile</a>
                        <br>
                        <a href="Signin.jsp">Signin</a>
                        <br>
                        <a href="Register.jsp">Register</a>
                        <br>
                        <a href="Quiz.jsp">Quiz</a>
                        <br>
                        <a href="Signout">Signout</a>-->


            </body>
        </html>
