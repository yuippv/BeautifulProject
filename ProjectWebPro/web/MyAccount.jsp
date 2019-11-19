<%-- 
    Document   : MyAccount
    Created on : Nov 15, 2019, 1:56:06 PM
    Author     : yypsx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account Page</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!--//font-family-->
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">

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
                color: white;
            }    

            .topic{
                text-align: center;
                font-size: 100px;
            }

            .box{
                width: 100%;
                border-radius:10px;
                border: none;
                height: 40px;
            }


        </style>
    </head>




    <body>
        <h1 class="topic">My Profile</h1>


        <div class="container bootstrap snippet">

            <div class="row">
                <div class="col-sm-3"><!--left col-->
                    <div class="panel panel-default">   

                        <div class="panel-body"><a href="MyAccount.jsp">my account</a></div>
                        <div class="panel-body"><a href="Index.jsp">Home</a></div>
                    </div>

                </div><!--/col-3-->

                <div class="col-sm-9">
                    <span style="color: #fbb710">${notice}</span>
                    <form class="form" action="EditAccount" method="post" id="registrationForm">
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="box form-control" name="firstname" id="firstname" value="${account.firstname}" pattern=".{6,}" title="Must contain at least 6 or more characters" required>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="last_name"><h4>Last name</h4></label>
                                <input type="text" class="box form-control" name="lastname" id="lastname" value="${account.lastname}" pattern=".{6,}" title="Must contain at least 6 or more characters" required>
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>Email</h4></label>
                                <input type="email" class="box form-control" name="email" id="email" value="${account.email}" readonly>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="phone"><h4>Phone</h4></label>
                                <input type="text" class="box form-control" name="tel" id="phone" value="${account.tel}" pattern="[0-9]{10}" maxlength="10"  title="Must contain 10 Numbers" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="last_name"><h4>Password</h4></label>
                                <input type="password" class="box form-control" name="password" id="lastname" value="${account.password}" readonly>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="address"><h4>Address</h4></label>
                                <input type="text" name="address" class="box form-control" id="address" value="${account.address}" title="edit an address." required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="school"><h4>School</h4></label>
                                <input type="text" name="school" class="box form-control" id="school" value="${account.school}" title="edit an school." required>
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="gender"><h4>Gender</h4></label>
                                <input type="text" name="gender" class="box form-control" id="gender" value="${account.gender}" title="edit an school." readonly>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!--/col-9-->
        </div><!--/row-->


    </body>
</html>
