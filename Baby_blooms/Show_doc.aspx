<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show_doc.aspx.cs" Inherits="ExofDataList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Doctors</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="mainassests/img/favicon.png" rel="icon">
  <link href="mainassests/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="mainassests/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="mainassests/icofont/icofont.min.css" rel="stylesheet">
  <link href="mainassests/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="mainassests/animate.css/animate.min.css" rel="stylesheet">
  <link href="mainassests/owl.carousel/mainassests/owl.carousel.min.css" rel="stylesheet">
  <link href="mainassests/venobox/venobox.css" rel="stylesheet">
  <link href="mainassests/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
<link href="mainassests/css/doc.css" rel="stylesheet" />
  <link href="mainassests/css/style.css" rel="stylesheet">
<body>
     
    <form id="form1" runat="server">
    <div>
      <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="index.html" class="logo mr-auto"><img src="mainassests/img/logo.png" alt=""></a>


      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li ><a href="Blog_page.aspx">Home</a></li>
          <li><a href="Blog_page.aspx">Blog</a></li>
         
          <li class="active"><a href="show_doc.aspx">Doctors</a></li>
          <li><a href="Vaccine_show.aspx">Vaccines</a></li>
          <li class="drop-down"><a href="">Signup/Login</a>
          <ul>
            <li><a href="doc_login.aspx">Doctor</a></li>
            <li><a href="user_login.aspx">User</a></li>
            
          </ul>
        </li>
          

        </ul>
      </nav><!-- .nav-menu -->

      <!-- <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a> -->

    </div>
  </header>
        
        <section>

        <div class="section-title pad">
          <h2>Doctors</h2>
          
        </div>
            <div class="container">
         
        <asp:Repeater id="Repeater1" runat="server">
            <ItemTemplate>
     <div class="content">
        <div class="card">
            <div class="firstinfo1"><img src='<%#DataBinder.Eval(Container.DataItem,"imagepath")%>' />
                <div class="profileinfo">
                    <h1>Doctor Name : <%# DataBinder.Eval(Container.DataItem, "doc_name" )%>
                     </h1>
                    <h4>Doctor Id : <%# DataBinder.Eval(Container.DataItem, "doc_id" )%>
                    </h4>
                   
                    <h4>Hospital : <%# DataBinder.Eval(Container.DataItem, "hospital" )%>
                    </h4>
                    <h4>City : <%# DataBinder.Eval(Container.DataItem, "city" )%>
                    </h4>
                    <h4>Qualification : <%# DataBinder.Eval(Container.DataItem, "qualification" )%>
                    </h4>
                   
                </div>
            </div>
        </div>
        </div>
        </ItemTemplate>
        </asp:Repeater>
</div>
        </section>
         <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Medicio</h3>
              <p>
                A108 Adam Street <br>
                NY 535022, USA<br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="adlog.aspx">Admin_login</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>

        </div>
      </div>
    </div>

    
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="Show_doc.aspx" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="mainassests/jquery/jquery.min.js"></script>
  <script src="mainassests/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="mainassests/jquery.easing/jquery.easing.min.js"></script>
  <script src="mainassests/php-email-form/validate.js"></script>
  <script src="mainassests/waypoints/jquery.waypoints.min.js"></script>
  <script src="mainassests/counterup/counterup.min.js"></script>
  <script src="mainassests/owl.carousel/owl.carousel.min.js"></script>
  <script src="mainassests/venobox/venobox.min.js"></script>
  <script src="mainassests/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="mainassests/js/main.js"></script>
    
    </div>
    </form>
</body>
</html>
