<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vaacine_record.aspx.cs" Inherits="vaacine_record" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add vaccine record</title>
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
						Add Vaccine Record
					</span>

					<div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox1" runat="server"   CssClass="input100" Type="text" placeholder="vaccine_id" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
				
					<div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox2" runat="server" CssClass="input100" type="text" placeholder="child_id" required=""></asp:TextBox>
						<span class="focus-input100"></span>
					
						</div>
                    <div class="wrap-input100 validate-input m-b-16" >
                        <h4 style="text-align:center">Due_date</h4>
						<asp:TextBox ID="TextBox3" runat="server"   CssClass="input100" Type="date" placeholder="due_date" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-16" >
                         <h4 style="text-align:center">Given_date</h4>
						<asp:TextBox ID="TextBox4" runat="server"   CssClass="input100" Type="date" placeholder="given_date" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						

                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-dark" NavigateUrl="vaccine_display_doc.aspx"  >Go back</asp:HyperLink>
                        <div style="text-align: center" >
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Number for doc_id" Font-Size="Medium" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator> <br />
				<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Number for doc_id" Font-Size="Medium" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
                         </div>
					</div>

		
                        
						
					<div class="container-login100-form-btn m-t-17">
						<asp:Button ID="Button1" runat="server"  Text="Button" CssClass="login100-form-btn" OnClick="Button1_Click" />
                        </div>

                     		

				<div class="align-content-center center" style="text-align:center" >
					    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"  ></asp:Label>
                    </div>
                    

				</form>
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