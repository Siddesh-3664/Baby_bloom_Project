<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adddoctors.aspx.cs" Inherits="adddoctors" %>


<!DOCTYPE html>
<html>
<head>
<title>Add_doctors</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->

<!-- //Custom Theme files -->
    <link href="mainassests/css/add_doctor.css" rel="stylesheet" />
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Add_Doctors</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form id="form1" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="text" type="text" placeholder="doctor_id" required=""   ></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="email" type="text" placeholder="doctor_name" required=""></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="email" type="text" placeholder="hospital" required=""></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="email" type="text" placeholder="city" required=""></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="email" type="text" placeholder="qualification" required=""></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="email" type="email" placeholder="email" required=""></asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="email" type="password" placeholder="password" required="" ></asp:TextBox>
                    




					 <div style="text-align: center" >
					    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"  style="text-align: center" Font-Size="Medium"  ></asp:Label>
                    </div>
				



                     <div style="text-align: center" >
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Number for ID" Font-Size="Medium" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
				
                         </div>
                    


					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" type="submit" value="Add_Doctor" />


                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-warning" NavigateUrl="Admin_page.aspx">Go_Back</asp:HyperLink>
				</form>
				
			</div>
		</div>
		
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>