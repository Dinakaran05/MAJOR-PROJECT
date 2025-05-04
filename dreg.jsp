
<!DOCTYPE html>
<html>

<head>
    <title>Slide Navbar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap">
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: 'Jost', sans-serif;
            background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
        }
    </style>
</head>

<body>

    <div class="container">
        <form class="well form-horizontal" action="Dreg_login" method="post" id="registration_form" enctype="multipart/form-data">
            <fieldset>
                <legend>Register</legend>
                <div class="form-group">
                    <label class="col-md-4 control-label">Name</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="name" maxlength="30" placeholder="Name" class="form-control" type="text" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" required="true">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">E-Mail</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="email" maxlength="30" placeholder="E-Mail" class="form-control" type="text" required="true">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Password</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input name="password"  placeholder="**********" class="form-control" type="password" required="true">
                        </div>
                    </div>
                </div>

                

                <div class="form-group">
                    <label class="col-md-4 control-label">Contact</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <input name="phone" maxlength="16" placeholder="Phone" class="form-control" type="tel" required="true">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Aadhar Card</label>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                            <input name="file" class="form-control" type="file" required="true">
                        </div>
                    </div>
                </div>

                <div class="alert alert-success" role="alert" style="display: none;" id="registration_success">Registration Successfully Completed.</div>

                <div class="form-group">
                    <div class="col-md-8 col-md-offset-4">
                        <button type="submit" class="btn btn-primary">Register</button>
                        <a href="Duser_Login.jsp" class="btn btn-default">Login</a>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#registration_form').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    name: {
                        validators: {
                            stringLength: {
                                min: 3,
                                message: 'Please enter at least 3 characters'
                            },
                            notEmpty: {
                                message: 'Please enter your name'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: 'Please enter your email address'
                            },
                            emailAddress: {
                                message: 'Please enter a valid email address'
                            }
                        }
                    },
                /*     password: {
                        validators: {
                            stringLength: {
                                min: 8,
                                max: 16,
                                message: 'Please enter at least 8 characters and no more than 16'
                            },
                            identical: {
                                field: 'confirmpassword',
                                message: 'The password and the confirm password are not the same'
                            },
                            notEmpty: {
                                message: 'Please enter your password'
                            }
                        }
                    },
                    confirmpassword: {
                        validators: {
                            notEmpty: {
                                message: 'Please confirm your password'
                            },
                            identical: {
                                field: 'password',
                                message: 'The password and the confirm password are not the same'
                            }
                        }
                    }
                }, */
                submitHandler: function (validator, form) {
                    $('#registration_success').slideDown({ opacity: "show" }, "slow");
                    $.post(form.attr('action'), form.serialize(), function () { }, 'json');
                }
            );
        });
    </script>

</body>

</html>
