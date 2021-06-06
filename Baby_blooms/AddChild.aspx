<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddChild.aspx.cs" Inherits="AddChild" %>


<!DOCTYPE html>
<html>
<head>
    <title>AddChild</title>
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
						AddChild
					</span>

					<div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox1" runat="server"   CssClass="input100" Type="text" placeholder="child_name" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
				
					<div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox2" runat="server" CssClass="input100" type="text" placeholder="father_name" required=""></asp:TextBox>
						<span class="focus-input100"></span>
					
						</div>
                    <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox3" runat="server"   CssClass="input100" Type="text" placeholder="mother_name" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox4" runat="server"   CssClass="input100" Type="text" placeholder="father_qualification" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox5" runat="server"   CssClass="input100" Type="text" placeholder="father_occupation" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox6" runat="server"   CssClass="input100" Type="text" placeholder="mother_qualification" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                                <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox7" runat="server"   CssClass="input100" Type="text" placeholder="mother_occupation" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                                <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox8" runat="server"   CssClass="input100" Type="text" placeholder="birth_place" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                                <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox9" runat="server"   CssClass="input100" Type="text" placeholder="birth_weight" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                    
                                <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox10" runat="server"   CssClass="input100" Type="date" placeholder="Date_of_birth" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                    
                                <div class="wrap-input100 validate-input m-b-16" >
                                     <asp:DropDownList ID="DropDownList1" runat="server"    CssClass="input100" Type="text" placeholder="sex" required="">
            <asp:ListItem>Male </asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
						
						<span class="focus-input100"></span>
					</div>

                    
                                <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox12" runat="server"   CssClass="input100" Type="text" placeholder="parent_id" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                      <div class="wrap-input100 validate-input m-b-16" >
						<asp:TextBox ID="TextBox13" runat="server"   CssClass="input100" Type="text" placeholder="doc_id" required="" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						

						<div>
                            
							<a href="Child_details.aspx" class="txt1">
								Go_back
							</a>
						</div>
                        <div style="text-align: center" >
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter Number for Parent_id" Font-Size="Medium" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
				
                            <br />
					<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter Number for doc_id" Font-Size="Medium" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
				
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