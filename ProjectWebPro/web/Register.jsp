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

        <!-- Title Page-->
        <title>Y2S Register</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        
        <!-- Font family-->
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!--bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>
            
            body{
                /*background-image: url(images/bg/bg.PNG);*/
                background-color: #b3aad6;
                font-family: 'Titillium Web', sans-serif;
                font-weight: 700; 
                
                }
                
        </style>
    </head>

    <body>
        <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
            <div class="wrapper wrapper--w790">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Register</h2>
                    </div>
                    <div class="card-body">
                        <form action="Register" method="post">
                            <div class="form-row m-b-55">
                                <div class="name">Name</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-2">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="firstname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">
                                                <label class="label--desc">first name</label>
                                            </div>
                                        </div>
                                        <div class="col-2">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="lastname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">
                                                <label class="label--desc">last name</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Email</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="" title="Must contain correct email form.">
                                        <label class="label--desc" style="color: red">${warning}</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" id="pwd" type="password" name="password" style="width: 444px;" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                                        <button type="button" id="eye">
                                            <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <p>Gender</p>   
                            <label class="container">Male
                                <input type="radio" checked="checked" name="gender" value="Male">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Female
                                <input type="radio" name="gender" value="Female">
                                <span class="checkmark"></span>
                            </label>
                                    
                            <div class="form-row m-b-55">
                                <div class="name">Phone</div>
                                <div class="value">
                                    <div class="row row-refine">
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="tel" pattern="[0-9]{10}" maxlength="10"  title="Must contain 10 Numbers" required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Address</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple select--no-search">
                                            <input class="input--style-5" type="text" name="address">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">School</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple select--no-search">
                                            <input class="input--style-5" type="text" name="school" style="width: 104px;" required="">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                            </div><br><hr style="width: 172px;">
                        </form>
                        <br><form action="Index.jsp" method="POST"><button class="btn btn--radius-2 btn--black" type="submit">Cancel</button></form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>

        <script>
            function show() {
                var p = document.getElementById('pwd');
                p.setAttribute('type', 'text');
            }

            function hide() {
                var p = document.getElementById('pwd');
                p.setAttribute('type', 'password');
            }

            var pwShown = 0;

            document.getElementById("eye").addEventListener("click", function () {
                if (pwShown == 0) {
                    pwShown = 1;
                    show();
                } else {
                    pwShown = 0;
                    hide();
                }
            }, false);
        </script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
