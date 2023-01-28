<%@ Page Title="" Language="C#" MasterPageFile="~/NoFooter.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="project7.LoginPage" %>
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
     <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
     <section class="normal-breadcrumb set-bg" data-setbg="img/SignUpBackGround.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Sign in</h2>
                        <p>Welcome to MovieMaster</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Login</h3>
                            <div class="input__item">
                                 <asp:TextBox runat="server" placeholder="Email address" ID="Email" CssClass="form-control" TextMode="Email" />
                                <span class="icon_mail"></span>
                            </div>
                                                    
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                            <div class="input__item">
                                <asp:TextBox runat="server" placeholder="Password" ID="Password" TextMode="Password" CssClass="form-control" />
                                <span class="icon_lock"></span>
                            </div>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />

                 <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="site-btn" />

                    </div>
                </div>
                <div class="col-lg-6" style="padding-top:70px">
                    <div class="login__register">
                        <h3>Dont’t Have An Account?</h3>
                        <a href="RegisterPage.aspx" class="primary-btn">Register Now</a>
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
