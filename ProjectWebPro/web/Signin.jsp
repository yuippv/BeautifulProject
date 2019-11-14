<%-- 
    Document   : Login
    Created on : Nov 8, 2019, 6:33:28 PM
    Author     : Antoprise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>
            .body1{
                background-color: #fff2e5;
                font-family: 'Titillium Web', sans-serif;
                font-weight: 700;   
            }

            .topic{
                margin-top: 100px;
            }

            .box{
                width: 100%;
            }

            .boxSign{
                background-color : #ff748a;
                border: none;
                width: 100%;
                transition: 0.3s;
            }
            .boxSign:hover {opacity: 0.5}

            .boxRegis{
                background-color : #b7ded7;
                border: none;
                width: 100%;
                transition: 0.3s;

            }
            .boxRegis:hover {opacity: 0.5}

        </style>
        <title>Sign in Page</title>
    </head>
    <body class="body1">
        
        <div class="container">

            <div class="row">
                <div class="col">
                </div>
                <div class="col-5" style="text-align:center;">
                    <h1 class="topic">SIGN IN WITH EMAIL</h1>
                </div>
                <div class="col">
                </div>
            </div>

            <form action="Signin" method="post">

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <br>
                        <p>EMAIL ADDRESS</p>
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <input class="box" name="email" type="text" required value="${param.email}"/>
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <br>
                        <p>PASSWORD</p>
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <input class="box" name="password" type="text" required value="${param.password}"/>
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <p style="color:red">${errorsignin}</p>
                        <p><input name="remember"type="checkbox" value="Remember>"/> Remember</p>
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <input class="boxSign" type="submit" value="SIGN IN"/>
                    </div>
                    <div class="col">
                    </div>
                </div>
                    
                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6" style="text-align: center">
                        OR
                    </div>
                    <div class="col">
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                    </div>
                    <div class="col-6">
                        <input class="boxRegis" type="submit" value="REGISTER"/>
                    </div>
                    <div class="col">
                    </div>
                </div>

            </form>
        </div>
    </body>
</html>

