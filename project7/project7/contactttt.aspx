<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactttt.aspx.cs" Inherits="project7.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .SendEmailButton {
            background-color: darkred;
            border: none;
            border-radius:20px;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition-duration: 0.4s;
        }
            .SendEmailButton:hover {
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
                /*background-color: #4CAF50;*/ /* Green */
                color: black;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s"  style="background: linear-gradient(rgb(0 0 0), rgb(0 0 0)), url(../img/carousel-1.jpg) center center no-repeat;
    background-size: cover">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">Contact Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <p class="fs-5 fw-bold " style="color:darkred">Contact Us</p>
                    <h1 class="display-5 mb-5"  style="color:black">If You Have Any Query, Please Contact Us</h1>
                    <p class="mb-4">Do you have an inquiry or need to contact us? <br />You only need to send
                     An email with a comment or opinion will be answered by the customer service team within a short period
                     Or in short, you can call directly via the number listed. <br /> </p>
                    <br />
                    <form>
        <div class="row g-3">
            <div class="col-md-6">
                <div class="form-floating">
                       <asp:TextBox  ID="TextBox3" class="form-control" runat="server" placeholder="enter name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    
                    <label for="name">Your Name</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating">
                    
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="name@example.com"></asp:TextBox>  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <label for="email">Your Email</label>
                </div>
            </div>
            <div class="col-12">
                <div class="form-floating">
                     <asp:TextBox  ID="TextBox4" class="form-control" runat="server" placeholder="your subject"></asp:TextBox>
                    
                    <label for="subject">Subject</label>
                </div>
            </div>
            <div class="col-12">
                <div class="form-floating">
                     <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="your messege" Style="width:610px; height:100px;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" Display="Dynamic" ></asp:RequiredFieldValidator>
                   
                    <label for="message">Message</label>
                </div>
            </div>
            <div class="col-12">
                <br /> <asp:Button ID="Button1" class="SendEmailButton" runat="server" Text="Send Email" OnClick="Button1_Click"   />
            </div>
        </div>
    </form>



                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 450px;">
                    <div class="position-relative rounded overflow-hidden h-100">
                        <iframe class="position-relative w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3384.9027362142688!2d35.90633641511676!3d31.963535281225205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151ca07174125973%3A0x6853dfe334a6f144!2sAbdali%20Mall!5e0!3m2!1sen!2sbd!4v1674673282044!5m2!1sen!2sbd"
                          frameborder="0"   style="min-height: 450px; border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                       <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    


    <!-- Back to Top -->
    <%--<a href="#" class=" btn btn-lg btn-primary  btn-lg-square rounded-circle back-to-top" ><i class="bi bi-arrow-up" style="background-color: #710202;
    border-color: #6e0202; color:darkred "></i></a>--%>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/parallax/parallax.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44333/Default">Home Page</a>',

            }).then(function () {
                window.location = "https://localhost:44301/WebForm1";
            });

        }
    </script>
</asp:Content>
