<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="project7.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <style>
.page-header .breadcrumb-item+.breadcrumb-item::before {
    color: darkred;
}
.carousel-caption {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    background: rgba(0, 0, 0, .6);
    z-index: 1;
}
.carousel-control-prev-icon,
.carousel-control-next-icon {
    width: 3rem;
    height: 3rem;
    border-radius: 3rem;
    background-color: darkred;
    border: 10px solid darkred;
}
#bigg:hover #small {
  display: none;
}

.bigg:hover .desc {
 margin-top:150px;
}
.bigg:hover .small {

}
body{
    background-color:black;
}
.facts,
.quote {
    background: rgba(0, 0, 0, .4);
}
.portfolio-inner .portfolio-text .btn:hover {
    background: darkred;
 /*   color: var(--light);*/
}
#portfolio-flters {
    display: inline-block;
    background: darkred;
    padding: 10px 15px;
}
/*.portfolio-inner::before,
.portfolio-inner::after {
    position: absolute;
    content: "";
    width: 0;
    height: 100%;
    top: 0;
    left: 0;
   background: rgba(0, 0, 0, .4);
    transition: .5s;
}*/

.fa-eye{
    color:black;
}
.fa-link{
    color:black;
}
#my-iframe {
   display: none;
   display:flex;
   
}
.bg-light{
    background-color: #f1f1f1 !important;
}


.service-item .service-text{
    background: #ffffff12 !important;
    
}
.service-item .service-text .desc{
    opacity:0;
}

h4{
    color:black;
}
.service-item:hover .service-text:hover{
      background: #00000092 !important;
    

}
.service-item:hover .service-text:hover .desc{
    
     color: white !important;
     opacity:1;
}

.service-item .service-text .btn{
    background:#fff7f7 !important;
    color:black !important;
}

.text-primary{
    color:black !important;
}
.mb-4{
    color: white !important;
}

.arrow-info {
 
  position: absolute;
  bottom:22%;
  left: 42%;
  transform: translateX(-50%);
  display:none;
}

.arrow {
  width: 0;
  height: 0;
  border-left: 10px solid transparent;
  border-right: 10px solid transparent;
  border-bottom: 10px solid darkred;
  margin: 2px auto;
  
}

.info {
  text-align: center;
  background-color: darkred;
  border-radius:5px;
  color: white;
  padding: 3px;
  text-transform:capitalize;
}

.arrow:hover +.arrow-info{
  display: block;
}
.view{
     
    color:white;
    margin:20px auto;
        text-align:center;
    display:flex;
    justify-content:center;
    border-radius:5px;
    font-size:20px;
    text-transform:capitalize;
}

.view:hover{
    color:red !important;
}

#img{
    background-image:url("img/redblack.jfif");
    background-size:cover;
    background-repeat:no-repeat;

  
    
}

.text-center{
    color: black !important;
}

.testimonial-carousel .owl-nav .owl-prev, .testimonial-carousel .owl-nav .owl-next{
    background-color:white;
    color:black !important;
}
.testimonial-carousel .owl-nav .owl-prev:hover{
    background-color:darkred !important;
    
}
.testimonial-carousel .owl-nav .owl-next:hover{
    background-color:darkred !important;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Carousel Start -->
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid p-0 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/film.jpeg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <h1 style="font-size:60px" class="display-1 text-white mb-5 animated slideInDown">Enjoy browsing our selection of movies and showtimes!</h1>
                                    <a href="ALL.aspx" class="btn btn-primary py-sm-3 px-sm-4" style="background-color:darkred;border:none">Week Movies</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/film6.jpeg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-7">
                                    <h1 style="font-size:60px" class="display-1 text-white mb-5 animated slideInDown">Find the perfect movie and showtime.</h1>
                                    <a href="ALL.aspx" class="btn btn-primary py-sm-3 px-sm-4" style="background-color:darkred ;border:none">Week Movies</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
    <!-- Service Start -->
    <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
    <div class="container-xxl py-5" >
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp " data-wow-delay="0.1s" style="max-width: 500px;" >
              <%--  <p class="fs-5 fw-bold text-primary" style="color:white">Our Services</p>--%>
                <h1 class="display-5 mb-5" style="color:white">Showing Now</h1>
            </div>
            <div id="con" runat="server" class="row g-4"></div>
            
           
           
        </div>
    </div>
    <a href="ALL.aspx" Class="view"  id="ok"><p>show more</p></a>
    <!-- Service End -->
      <!--slider car-->



    
    <%--slider2--%>











    





    <%--slider222--%>

    <!-- Quote Start -->
    
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                                    <ContentTemplate>
    <div id="img" class="container-fluid quote my-5 py-5" data-parallax="scroll" data-background-image="img/mov.jfif" >
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="bg-white rounded p-4 p-sm-5 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="display-5 text-center mb-5">Give Us Movie Suggestion</h1>
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control bg-light border-0" id="gname" placeholder="Gurdian Name" runat="server">
                                    <label for="gname">Your Name</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control bg-light border-0" id="gmail" placeholder="Gurdian Email" runat="server">
                                    <label for="gmail">Name Of Movie</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control bg-light border-0" id="cname" placeholder="Child Name" runat="server">
                                    <label for="cname">Release year</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control bg-light border-0" id="cage" placeholder="Child Age" runat="server">
                                    <label for="cage">Movie Type</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control bg-light border-0" placeholder="Leave a message here" id="message" style="height: 100px" runat="server"></textarea>
                                    <label for="message">Your Note</label>
                                </div>
                            </div>
                            <div class="col-12 text-center">
                                <%--<button class="btn btn-primary py-3 px-4" type="submit">suggestion</button>--%>

                                    <asp:Button ID="Button1" runat="server" Text="suggestion" style="background-color:darkred; border-color:darkred;"  class="btn btn-primary py-3 px-4" OnClick="Button1_Click"/>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
              </ContentTemplate>
                                </asp:UpdatePanel>
    <!-- Quote End -->

       <!-- Projects Start -->
    <div id="com" class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
              <%--  <p class="fs-5 fw-bold text-primary">Our Projects</p>--%>
                <h1 class="display-5 mb-5" style="color:white">Comming Soon</h1>
            </div>
            <div class="row wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-12 text-center">
                    <%--<ul class="list-inline rounded mb-5" id="portfolio-flters">
                        <li class="mx-2 active" data-filter="*">All</li>
                        <li class="mx-2" data-filter=".first">Complete Projects</li>
                        <li class="mx-2" data-filter=".second">Ongoing Projects</li>
                    </ul>--%>
                </div>
            </div>
            <%--<iframe id="my-iframe" width="100" height="100%" src="https://www.youtube.com/embed/E4xmu4aZdkU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>--%>
            <div class="row g-4 portfolio-container" style="display:flex;justify-content:space-between">
<div id="coming" runat="server"></div>
                
         
            </div>
        </div>
    </div>
    <!-- Projects End -->

    
    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="fs-5 fw-bold text-white">Testimonial</p>
                    <h1 class="display-5 mb-5" style="color:white">What Our Clients Say About Us!</h1>
                    <p class="mb-4" style="color:white" >
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Add your Feedback" Height="140"></asp:TextBox></p>
           <%--         <a class="btn btn-primary py-3 px-4" href="" style="/*background-color:darkred;border:none*/">See More</a>--%>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>

                      
                         <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-primary py-3 px-4"  style="background-color:darkred;border:none" OnClick="Button2_Click" OnClientClick="Button1_Click(); return false;"/>
                              </ContentTemplate>
                    </asp:UpdatePanel>
                   
                </div>
                <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="owl-carousel testimonial-carousel" id="feedbackuser" runat="server">
       
                
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
        <!-- Testimonial Start -->
    <%--<div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="fs-5 fw-bold text-white">Testimonial</p>
                    <h1 class="display-5 mb-5" style="color:white">What Our Clients Say About Us!</h1>
                    <p class="mb-4" style="color:white">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit sed stet lorem sit clita duo justo.</p>
                    <a class="btn btn-primary py-3 px-4" href="" style="background-color:darkred;border:none">See More</a>
                </div>
                <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="owl-carousel testimonial-carousel">
                   
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Testimonial End -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

  <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44379/HomePage%22%3EReturn To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44339/Homepage";
            });


        }
    </script>
</asp:Content>
