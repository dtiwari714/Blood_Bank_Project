<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Blood_Bank_Project.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/MarqueeTools.css" rel="stylesheet" />
    		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>	
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid hero-header bg-light py-5 mb-0">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6">
                    <h1 class="display-4 mb-3 animated slideInDown">"Blood Donation Camp"</h1>
                    <p class="animated slideInDown">You may be as different as the sun and the moon, but the same blood
                        flows through both your hearts. You need her, as she needs you</p>
                    <a href="Login_Form.aspx" class="btn btn-primary py-3 px-4 animated slideInDown">Sign In</a>
                </div>
                <div class="col-lg-6 animated fadeIn">
                    <img class="img-fluid animated pulse infinite" style="animation-duration: 3s;" src="img/blood.jpg"
                        alt="">
                </div>
            </div>
        </div>
    </div>

        <!--Marquee Tool-->
    <div id="First_Hi">
         <div class="news">
        <marquee class="blink"> “If you’re a blood donor, you’re a hero to someone, somewhere, who received your gracious gift of life.”
        </marquee>
         </div> 
     </div>
    <!--End Marquee Tool-->

     <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="img/Blood_2.jpg" alt="">
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="h-100">
                        <h1 class="display-6">About Us</h1>
                        <p class="text-primary fs-5 mb-4">The Most Trusted Blood Donation Website
                        </p>
                        <p class="text-info"><b>"Welcome to our blood bank management website! We are a team dedicated to connecting donors with those 
                            in need of blood transfusions. Our website allows for easy registration as a donor, scheduling of donation
                            appointments, and searching for nearby donation centers. We also provide resources and information on the importance
                            of blood donation and how it can save lives. Our goal is to ensure that every patient in need has access to the blood
                            they require. We are grateful for the generosity of donors and strive to make the donation process as convenient
                            and efficient as possible. Thank you for choosing our website to support the vital cause of blood donation."</b>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

<footer id="footer">
    <div class="container d-md-flex py-3">
      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>RK Foundation</span></strong>. All Rights Reserved
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

</asp:Content>
