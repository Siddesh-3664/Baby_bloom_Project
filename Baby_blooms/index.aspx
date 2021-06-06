<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder22" Runat="Server">

    <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(mainassests/img/slide/mom_dad_baby.jpg)">
          <div class="container">
            <h2>Welcome to <span>Baby Blooms</span></h2>
            <p>It is a smile of a baby that makes life worth living.</p>
           
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(mainassests/img/slide/slide-2.jpg)">
          <div class="container">
            <h2>Welcome to <span>Baby Blooms</span></h2>
            <p>Babies cry at birth because it is the first time they experience separation from love.</p>
            
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(mainassests/img/slide/slide-3.jpg)">
          <div class="container">
            <h2>Welcome to <span>Baby Blooms</span></h2>
            <p>Like stars are to the sky, so are the children to our world. They deserve to shine!</p>
            
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="icofont-injection-syringe"></i></div>
              <h4 class="title"><a href="">Vaccination</a></h4>
              <p class="description">Vaccination protects children from serious illness and complications</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="icofont-sand-clock"></i></div>
              <h4 class="title"><a href="">Sleep for Babies</a></h4>
              <p class="description">Good hours sleep allows Babies to strengthen their memories and things they've learned</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="icofont-baby-food"></i></i></i></div>
              <h4 class="title"><a href="">Breastfeed</a></h4>
              <p class="description">It protects against allergies, sickness, obesity. It protects against diseases, like diabetes and cancer</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="icofont-baby"></i></i></div>
              <h4 class="title"><a href="">Get your baby moving</a></h4>
              <p class="description">xercise can and should start early. Get your baby on the floor; do “tummy time,” encourage movement.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Featured Services Section -->

   

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">

      <div class="container" data-aos="fade-up">


        <div class="section-title">
          <h2>Blogs</h2>
          
        </div>
          <asp:Repeater id="Repeater1" runat="server" >
                    <ItemTemplate> 
        <div class="row">
          <div class="col-lg-6" data-aos="fade-right">
            <img src='<%#DataBinder.Eval(Container.DataItem,"filename")%>' class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3><%# DataBinder.Eval(Container.DataItem, "Heading")%></h3>
            <p class="font-italic">
                <%# DataBinder.Eval(Container.DataItem, "content")%>
            </p>
          </div>
          
        </div>
             <br />
            <br />
            <br />
            <br />
             </ItemTemplate>
    </asp:Repeater>

      </div>
    </section><!-- End About Us Section -->

  

   


  </main><!-- End #main -->
</asp:Content>

