<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete_doc.aspx.cs" Inherits="delete_doc" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Delete_Doctor</title>
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
						Delete Doctor Record
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<asp:TextBox ID="TextBox1" runat="server"   CssClass="input100" Type="text" placeholder="Doctor ID" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					    
					
				
                   
						
						</div>
					</div>

		
                        
						
					<div class="container-login100-form-btn m-t-17">
						<asp:Button ID="Button1" runat="server"  Text="Button" CssClass="login100-form-btn" OnClientClick="return confirm('Sure Delete Record')" OnClick="Button1_Click" />
                        
					</div>

                     		

				<div class="align-content-center center" style="text-align:center" >
					    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"  ></asp:Label>
                    </div>
            <br />
            
                    

				</form>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl="Admin_page.aspx">GO_BAck</asp:HyperLink>
			</div>
		</div>
      
	</div>
	

	
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