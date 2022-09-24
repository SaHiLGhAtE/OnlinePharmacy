<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OnlineMedicine.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharma &mdash; Colorlib </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
   <div class="site-wrap">


    <div class="site-navbar py-2">

      <div class="search-wrap">
        <div class="container">
          <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
          <form action="#" method="post">
            <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
          </form>
        </div>
      </div>

      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="index.html" class="js-logo-clone">Pharma</a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li class="active"><a href="index.aspx">Home</a></li>
                <li> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Medicine</asp:HyperLink>  </li>
           <li> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink></li>

               <li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Customer/Chome.aspx">Customer</asp:HyperLink>  </li>

    <li> <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/Category.aspx">Admin</asp:HyperLink>  </li>
               
              </ul>
            </nav>
          </div>
          <div class="icons">
           Welcome : 
        <asp:LoginName ID="LoginName1" runat="server" /> &nbsp;&nbsp;<asp:LoginStatus ID="LoginStatus1" runat="server" />
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Pharma</h1>
            
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary h-100">
              <a  class="h-100">
                <h5>Free <br> Shipping</h5>
                <p>
                  for above Rs.1800
                  <strong>Free shipping with good services</strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a  class="h-100">
                <h5>Season <br> Sale 50% Off</h5>
                <p>
                  For 3 days 
                  <strong>Season discounts</strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a  class="h-100">
                <h5>Buy <br> With discount</h5>
                <p>
                  For daily customers
                  <strong>Regular Customers will get benefits</strong>
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">New Products</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           
            <a href="shop-single.html"> <img src="images/product_01.png" alt="Image"></a>
            <h3 class="text-dark"><a >Bioderma</a></h3>
            <p class="price">Rs. 56</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="shop-single.html"> <img src="images/product_02.png" alt="Image"></a>
            <h3 class="text-dark"><a >Chanca Piedra</a></h3>
            <p class="price">Rs. 748</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="shop-single.html"> <img src="images/product_03.png" alt="Image"></a>
            <h3 class="text-dark"><a >Umcka Cold Care</a></h3>
            <p class="price">Rs. 800</p>
          </div>

          
        </div>
        <div class="row mt-5">
          
        </div>
      </div>
    </div>

    
   

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Testimonials</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 no-direction owl-carousel">
        
              <div class="testimony">
                <blockquote>
                  <img src="images/person_1.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;Nice experience with pharma and good services.&rdquo;</p>
                </blockquote>

                <p>&mdash; Geet Pawar</p>
              </div>
        
              <div class="testimony">
                <blockquote>
                  <img src="images/person_2.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;Urgent deliveries and discounts are too good in pharma&rdquo;</p>
                </blockquote>
              
                <p>&mdash; Shreyash Jain</p>
              </div>
        
              <div class="testimony">
                <blockquote>
                  <img src="images/person_3.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;Good Services and effective medicines&rdquo;</p>
                </blockquote>
              
                <p>&mdash; Shivam Sharma</p>
              </div>
        
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
              <div class="banner-1-inner align-self-center">
                <h2>About Pharma</h2>
                <p>Online Pharma provides a platform for the users to Explore and Buy the medicines online. 
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Rated by Experts</h2>
                <p>Tested and Effective medicine for users.
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>


    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h1 class="footer-heading mb-4">Feedback</h1>
              <h3><a href="https://docs.google.com/forms/d/e/1FAIpQLSdtuJDc1qsvlSc87Hnu7hLIrnht_1uyPPlYDSgxdDsakOe8sg/viewform?usp=sf_link">Feedback us</a></h3>
            </div>

          </div>
          <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://www.pennmedicine.org/updates/blogs/health-and-wellness/2020/february/the-truth-about-supplements">Supplements</a></li>
              <li><a href="https://www.nia.nih.gov/health/vitamins-and-minerals-older-adults">Vitamins</a></li>
              <li><a href="https://www.webmd.com/diet/default.htm">Diet &amp; Nutrition</a></li>
              <li><a href="https://www.webmd.com/food-recipes/ss/slideshow-coffee-tea-benefits">Tea &amp; Coffee</a></li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">230 Radha apartment,near market,Ratnagiri</li>
                <li class="phone"><a href="tel://23923929210">+91 7588951248</a></li>
                <li class="email">onlinemedical29@gmail.com</li>
              </ul>
            </div>


          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            Designed & Developed By : Simran,Sahil,Ashish
            
            </p>
          </div>

        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    </form>
</body>
</html>
