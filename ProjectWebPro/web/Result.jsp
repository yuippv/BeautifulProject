<%-- 
    Document   : Result
    Created on : Nov 26, 2019, 7:18:55 PM
    Author     : yypsx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Y2S Index</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style.css" >

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <style>
            .padScore{
                width: 100%;
                padding: 20px;
                box-sizing: border-box;
                border-radius: 10px;
                background-color: #a49ac9;
                text-align: center;
                color: white;

            }
            .helloName{
                vertical-align: middle; 
                display: inline-block;

            }
            .profile{
                width:20%;
                margin : 10px;
            }

        </style>
        <title>Result</title>
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Y2S Academe</h3>
                </div>
                <ul class="list-unstyled components">
                    <li>
                        <a href="Index.jsp"><img src="images/home.png" style="vertical-align:middle; width: 30px;"> Home</a>
                    </li>

                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                            <img src="images/subject.png" style="vertical-align:middle; width: 30px;"> Subject</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li>
                                <a href="LessonList?catagories=Subject">ALL</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=MATHEMATICS">Mathematics</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=SCIENCE">Science</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=THAI">Thai</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=ENGLISH">English</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=SOCIAL">Social</a>
                            </li>
                            <li>
                                <a href="LessonList?catagories=HISTORY">History</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="MyAccount.jsp"><img src="images/profile.png" style="vertical-align:middle; width: 30px;"> Profile</a>
                    </li>
                    <li>
                        <a href="Signout"><img src="images/logout.png" style="vertical-align:middle; width: 30px;"> Logout</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <div class="col-4"></div>
                        <div class="col-4"></div>
                        <div class="col-4">
                            <img src="images/${account.gender}.png" class="profile" style="vertical-align:middle">
                            <h3 class="helloName">Hello : ${account.firstname}</h3>
                        </div>
                    </div>
                </nav>

                <div class="padScore"> 
                    <h1>
                        Congratulation!!<br>
                        You're score is
                    </h1>
                    <h1>${score}</h1>
                    <a href="GetLesson?lessonid=${lessonid}">
                        <button type="button" class="btn btn-warning">
                            Try again</button></a>
                    <a href="Index.jsp">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </a>
                </div>

            </div>
        </div>
        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Popper.JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
    </body>
</html>
