<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>User_login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="mainassests/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="mainassests/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="mainassests/css/util.css">
	<link rel="stylesheet" type="text/css" href="mainassests/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" runat="server">
					<span class="login100-form-title p-b-51">
						User_Login
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<asp:TextBox ID="TextBox1" runat="server"   CssClass="input100" Type="text" placeholder="Username" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<asp:TextBox ID="TextBox2" runat="server" CssClass="input100" type="password" placeholder="password" required=""></asp:TextBox>
						<span class="focus-input100"></span>
					
						</div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me</label></div>

						<div>
                            
							<a href="User_signup.aspx" class="txt1">
								Signup
							</a>
						</div>
					</div>

		
                        
						
					<div class="container-login100-form-btn m-t-17">
						<asp:Button ID="Button1" runat="server"  Text="Button" CssClass="login100-form-btn" OnClick="Button1_Click" />
                        <div> <a>Forgot Password??</a>		</div>
					</div>

                     		

				<div class="align-content-center center" style="text-align:center" >
					    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"  ></asp:Label>
                    </div>
                    

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
    <p>
        <br />
    </p>
	
<!--===============================================================================================-->
	<script src="mainassests/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="mainassests/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="mainassests/bootstrap/js/popper.js"></script>
	<script src="mainassests/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="mainassests/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="mainassests/daterangepicker/moment.min.js"></script>
	<script src="mainassests/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="mainassests/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->


</body>
</html>
