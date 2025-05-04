
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <style>
        /* Add any custom CSS here */
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Personal Information</h3>
                </div>
                <div class="panel-body">
                    <!-- Personal Information Form -->
                    <form action="Duser_login" method="post" id="personal-info-form">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="firstname" class="control-label">Name</label>
                                    <input id="first-name" name="firstname" type="text" autocomplete="given-name" placeholder="Enter your name" class="form-control" required>
                                </div>
                            </div>
                            
                             <div class="col-sm-12">
                                <div class="form-group">
                                    <label for=""email"" class="control-label">E-mail</label>
                                    <input id=""email"" name="email" type="email" autocomplete="given-name" placeholder="Enter mail" class="form-control" required>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="company" class="control-label">Individual / Organization</label>
                                    <input id="company" name="company" type="text" autocomplete="organization" placeholder="Individual or organization (optional)" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="address-line1" class="control-label">Address Line</label>
                                    <input id="address-line1" name="address-line" type="text" autocomplete="street-address" placeholder="Street address, P.O. Box, c/o" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="city" class="control-label">City / Town</label>
                                    <input id="city" name="city" type="text" autocomplete="address-level2" placeholder="City" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="region" class="control-label">State / Province</label>
                                    <input id="region" name="region" type="text" autocomplete="address-level1" placeholder="State / Province / Region" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="postal-code" class="control-label">Zip / Postal Code</label>
                                    <input id="postal-code" name="postal-code" type="text" autocomplete="postal-code" placeholder="Zip or postal code" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="country" class="control-label">Country</label>
                                    <select id="country" name="country" autocomplete="country" class="form-control">
                                        <option value="" selected disabled>(Please select a country)</option>
                                        <option value="IN">India</option>
                                        <option value="US">United States</option>
                                        <!-- Add more options as needed -->
                                    </select>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Donation Details</h3>
                </div>
                <div class="panel-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="Amount">Amount</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="Amount" placeholder="$" required>
                                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="donateType">State Govt</label>
                            <select name="donateType" id="donateType" class="form-control">
                                <option value="" selected disabled>Select state</option>
                                <option value="Tamilnadu">Tamilnadu</option>
                                <option value="Andhra">Andhra Pradesh</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Payment Details</h3>
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="cardNumber" placeholder="Valid Card Number" required data-stripe="number">
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <label for="expMonth">EXPIRATION DATE</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6 col-lg-6">
                                            <input type="text" class="form-control" name="expMonth" placeholder="MM" required data-stripe="exp_month">
                                        </div>
                                        <div class="col-xs-6 col-lg-6">
                                            <input type="text" class="form-control" name="expYear" placeholder="YY" required data-stripe="exp_year">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cvCode">CV CODE</label>
                                    <input type="password" class="form-control" name="cvCode" placeholder="CV" required data-stripe="cvc">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Donate Now</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Optional: Stripe JS for payment processing -->
<script src="https://js.stripe.com/v3/"></script>

<script>
    // Add any custom JavaScript here, such as Stripe payment processing
    // Example: Stripe('your_stripe_public_key');
</script>

</body>
</html>
 