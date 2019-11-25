<%-- 
    Document   : Register
    Created on : Nov 13, 2019, 12:39:48 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style.css" >

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

        <!-- Title Page-->
        <title>Y2S Register</title>

        <!-- Main CSS-->
        <link href="css/main.css" rel="stylesheet" media="all">

        <!--bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>

            body{
                background-color: #b3aad6;
            }

            .boxCon{
                background-color :  #f97ab1;
                border: none;
                width: 20%;
                transition: 0.3s;
                border-radius:10px;
            }
            .boxCon:hover {opacity: 0.5}

            .boxCan{
                background-color :  #5e4c96;
                border: none;
                width: 20%;
                transition: 0.3s;
                border-radius:10px;
            }
            .boxCan:hover {opacity: 0.5}

            .boxStyle{
                background-color: lightgray;
                border-radius:5px;
                border: none;
                height: 30px;
                width: 50%;
            }

            .boxName {
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 80%;
            }

            .boxMail{
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 85%;
            }

            .boxPass{
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 80%;
            }

            .boxPhone{
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 85%;
            }

            .boxAddr{
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 80%;
            }

            .boxSch{
                background-color: lightgray;
                border-radius:10px;
                border: none;
                height: 30px;
                width: 80%;
            }

            .frame{
                width: 100%;
                padding: 20px;
                box-sizing: border-box;
                background-color: white;

            }

            .wrapper-class input[type="radio"] {
                width: 30px;
            }

            .wrapper-class label {
                display: inline;
                margin-left: 5px;
            }

        </style>
    </head>
    <body>
        <form method="post" action="Register">
            <div class="container">
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6" style="text-align: center; margin-top: 50px; color: white;">
                        <h1>Register</h1>
                    </div>
                    <div class="col"></div>      
                </div>
                <form action="Register" method="post" style="margin-top: 20px;">

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6">
                            <div class="frame" style="text-align: center; ">
                                FIRSTNAME : <input class="boxName" type="text" name="firstname" pattern="[A-Za-z].{,}"required="">
                            </div></div>
                        <div class="col">       
                        </div>
                    </div>

                    <div class="row"> 
                        <div class="col"></div>
                        <div class="col-6">
                            <div class="frame" style="text-align: center;">
                                LASTNAME : <input class="boxName" type="text" name="lastname" pattern="[A-Za-z].{,}" required="">
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" style="text-align: center;">
                            <div class="frame">
                                EMAIL : <input class="boxMail" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="" title="Must contain correct email form.">
                                <label style="color: red">${warning}</label>
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" style="text-align: center;">
                            <div class="frame">
                                PASSWORD : <input class="boxPass" id="pwd" type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                                                  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                                <input type="checkbox" onclick="myFunction()">Show Password
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" style="text-align: center;">
                            <div class="frame">
                                PHONE : <input class="boxPhone" type="text" name="tel" pattern="[0-9]{10}" maxlength="10"  title="Must contain 10 Numbers" required="">
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" >
                            <div class="frame">
                                <div class="wrapper-class">
                                    GENDER :  <input type="radio" name="gender" value="male" checked>
                                    <label for="radio1">Male</label>    
                                    <input type="radio" name="gender" value="female">
                                    <label for="radio1">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" style="text-align: center;">
                            <div class="frame">
                                ADDRESS : <input class="boxAddr" type="text" name="address">
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>

                    <div class="row">
                        <div class="col"></div>
                        <div class="col-6" style="text-align: center;">
                            <div class="frame">
                                SCHOOL : <input class="boxSch" type="text" name="school" required="">
                            </div>
                        </div>
                        <div class="col"></div>      
                    </div>


                    <br>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                        </div>

                        <div class="col-8" style="text-align: center;">

                            <a href="Signin.jsp">
                                <input type="submit" value="CONFIRM" class="boxCon">
                            </a>
                        </div>
                    </div>
            </div>
        </form>
        <div class="container">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                </div>
                <div class="col-8" style="text-align: center;">
                    <br>
                    <a href="Signin.jsp">
                        <input type="submit" value="CANCEL" class="boxCan">
                    </a>
                </div>
            </div>
        </div>
        <script>
            function myFunction() {
                var x = document.getElementById("pwd");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>



    </body>
</html>
