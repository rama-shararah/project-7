<%@ Page Title="" Language="C#" MasterPageFile="~/NoFooter.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="project7.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <!-- Css Styles -->
    <link rel="stylesheet" href="Assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="Assets/css/style.css" type="text/css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <section class="normal-breadcrumb set-bg" data-setbg="img/SignUpBackGround.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Sign Up</h2>
                        <p>Welcome to MovieMaster</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Sign Up</h3>
                            <div class="input__item">
                                 <asp:TextBox runat="server" ID="Email" CssClass="form-control"  placeholder="Email address" TextMode="Email" />
               
                                <span class="icon_mail"></span>
                            </div>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            <div class="input__item">
          <asp:TextBox runat="server" ID="Name" CssClass="form-control" placeholder="Your Name"  />
                                <span class="icon_profile"></span>
                            </div>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
                        <div class="input__item">
          <asp:TextBox runat="server" ID="Phone" CssClass="form-control" placeholder="Phone"  />
                                <span class="icon_phone"></span>
                            </div>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
                            <div class="input__item">
                                 <asp:TextBox runat="server" ID="Password" placeholder="Password" TextMode="Password" CssClass="form-control" />
               
                                <span class="icon_lock"></span>
                            </div>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
                                                    <div class="input__item">

                        <asp:TextBox runat="server" ID="ConfirmPassword" placeholder="Confirm Password" TextMode="Password" CssClass="form-control" />
               
                                                           <span class="icon_lock"></span>

                                                    </div>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                        <div class="input__item" style="width:90%; color:#a9a9a9; background-color:white; border-radius:5px; " >  <i style="font-size:20px; margin-left:15px;" class="fa-regular fa-image"></i><asp:FileUpload accept=".png,.jpg,.jpeg,.gif"  style="width:90%; color:gray; background-color:white; font-size:12px; " class="site-btn" ID="FileUpload1" runat="server"    /></div>
                        
                        <br />
                                                <br />
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register"  class="site-btn" />

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__social__links" style="padding-top:180px">
                       <div class="login__register">
                        <h3>Already have an account? </h3>
                        <a href="LoginPage.aspx" class="primary-btn">Login</a>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <script src="Assets/js/jquery-3.3.1.min.js"></script>
    <script src="Assets/js/bootstrap.min.js"></script>
    <script src="Assets/js/player.js"></script>
    <script src="Assets/js/jquery.nice-select.min.js"></script>
    <script src="Assets/js/mixitup.min.js"></script>
    <script src="Assets/js/jquery.slicknav.js"></script>
    <script src="Assets/js/owl.carousel.min.js"></script>
    <script src="Assets/js/main.js"></script>
</asp:Content>
