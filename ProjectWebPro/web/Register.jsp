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

        <!-- Font family-->
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">

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
                font-family: 'Titillium Web', sans-serif;
                font-weight: 700; 
            }

        </style>
    </head>
    <body>
        <div class="container">

            <div class="row">
                <div class="col"></div>
                <div class="col-6" style="text-align: center;">
                    <h1>Register</h1>
                </div>
                <div class="col"></div>      
            </div>
            <form action="Register" method="post">

                <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <p>NAME</p>
                    </div>
                    <div class="col"></div>      
                </div>

                <div class="row" style="text-align: center;">
                    <div class="col"></div>
                    <div class="col-4">
                        FIRSTNAME : <input type="text" name="firstname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">
                    </div>
                    <div class="col-4">
                        LASTNAME : <input class="input--style-5" type="text" name="lastname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">
                    </div>
                    <div class="col"></div>
                </div>

                <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <br>
                        <p>EMAIL</p>
                    </div>
                    <div class="col"></div>      
                </div>
                
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6" style="text-align: center;">
                        <input class="input--style-5" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="" title="Must contain correct email form.">
                        <label style="color: red">${warning}</label>
                    </div>
                    <div class="col"></div>      
                </div>
                
                 <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <br>
                        <p>PASSWORD</p>
                    </div>
                    <div class="col"></div>      
                </div>
                    
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6" style="text-align: center;">
                        <input class="input--style-5" id="pwd" type="password" name="password" style="width: 444px;" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                            title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                        <button type="button" id="eye">
                            <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
                        </button>
                    </div>
                    <div class="col"></div>      
                </div>
                    
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <br>
                        <p>PHONE</p>
                    </div>
                    <div class="col"></div>      
                </div>
                    
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6" style="text-align: center;">
                        <input class="input--style-5" id="pwd" type="password" name="password" style="width: 444px;" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                            title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                        <button type="button" id="eye">
                            <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
                        </button>
                    </div>
                    <div class="col"></div>      
                </div>
                    
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <br>
                        <p>ADDRESS</p>
                    </div>
                    <div class="col"></div>      
                </div>
                    
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6">
                        <br>
                        <p>SCHOOL</p>
                    </div>
                    <div class="col"></div>      
                </div>
                    



                <!--                                <div class="name">Name</div>-->

                <!--<input class="input--style<!--<input class-5" type="text" name="firstname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">-->
                <!--<label class="label--desc">first name</label>-->

                <!--                                                <input class="input--style-5" type="text" name="lastname" pattern="[A-Za-z].{6,}" title="Must contain at least 6 or more characters" required="">
                                                                <label class="label--desc">last name</label>-->

                <!--                                <div class="name">Email</div>-->

                <!--                                        <input class="input--style-5" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="" title="Must contain correct email form.">
                                                        <label class="label--desc" style="color: red">${warning}</label>-->

                <!--                                <div class="name">Password</div>-->

                <!--                                        <input class="input--style-5" id="pwd" type="password" name="password" style="width: 444px;" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                                                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                                                        <button type="button" id="eye">
                                                            <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
                                                        </button>-->

                <!--<div class="name">Phone</div>-->

                <!--<input class="input--style-5" type="text" name="tel" pattern="[0-9]{10}" maxlength="10"  title="Must contain 10 Numbers" required="">-->

                <!--<div class="name">Address</div>-->

                <!--<input class="input--style-5" type="text" name="address">-->

                <!--<div class="name">School</div>-->

                <!--<input class="input--style-5" type="text" name="school" style="width: 104px;" required="">-->



                <!--<button class="btn btn--radius-2 btn--red" type="submit">Register</button>-->
                <!--</div><br><hr style="width: 172px;">-->
            </form>
            <!--<br><form action="Index.jsp" method="POST"><button class="btn btn--radius-2 btn--black" type="submit">Cancel</button></form>-->          

    </body>
</html>
