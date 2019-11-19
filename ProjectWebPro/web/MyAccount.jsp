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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>My Account Page</title>
        <!--//font-family-->
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700,900&display=swap" rel="stylesheet">

        <!--bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style.css" >

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <style>
            body{
                /*                background-color: #b3aad6;*/
                /*                font-family: 'Titillium Web', sans-serif;*/

            }    

            .topic{
                text-align: center;
                font-size: 50px;
            }

            .box{
                width: 100%;
                border-radius:10px;
                border: none;
                height: 40px;
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
                        <a href="Index.jsp"><img src="images/male.png" style="vertical-align:middle; width: 30px;">Home</a>
                    </li>
                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Subject</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li>
                                <a href="Math.jsp">Math</a>
                            </li>
                            <li>
                                <a href="#">Science</a>
                            </li>
                            <li>
                                <a href="#">Page 3</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="MyAccount.jsp">Profile</a>
                    </li>
                    <li>
                        <a href="Signin.jsp">Logout</a>
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
                            <img src="images/male.png" class="profile" style="vertical-align:middle">
                            <h3 class="helloName">Hello : ${account.firstname}</h3>
                        </div>
                    </div>
                </nav>

                <div class="container bootstrap snippet">

                    <div class="row">

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
            </div>
        </div><!-- jQuery CDN - Slim version (=without AJAX) -->
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
