<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="project7.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    

    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="ramaCSS/bootstrap.min.css" type="text/css">
    <%--<link rel="stylesheet" href="ramaCSS/font-awesome.min.css" type="text/css">--%>
    <link rel="stylesheet" href="ramaCSS/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="ramaCSS/plyr.css" type="text/css">
    <link rel="stylesheet" href="ramaCSS/nice-select.css" type="text/css">
    <link rel="stylesheet" href="ramaCSS/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="ramaCSS/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="ramaCSS/style.css" type="text/css">

    <style>
       html, body{
            
            background:black;
       }

       #logo{
           font-size:40px;
       }

       /* Modal content styles */
.modal-content {
/*    position: relative;*/
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    width: 80%;
    max-width: 1200px;
    z-index:2;
}

/* Close button styles */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
.fullscreen {
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9999;
}
#model{

      width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9999;
  display:none;
}
iframe{


}
.close-icon {
    position: absolute;
    top:-20px;
   right: 200px;
    font-size: 100px;
    font-weight: bold;
    color: #aaa;
    cursor: pointer;
    z-index:10000;
    color:white;
    
}

.close-icon :hover,
.close-icon :focus {
      color:white;
    text-decoration: none;
    cursor: pointer;
}
.modal-open {
  display: block;
}

.editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}
#Button3{


   
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.html">Movies</a>
                        <span>Details</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <img id="img" runat="server" class="anime__details__pic set-bg" src="film.png" />
<%--                        <div class="anime__details__pic set-bg" data-setbg="film.png">

                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        </div>--%>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3 id="title" runat="server"></h3>
                                <span></span>
                            </div>

                            <p id="description" runat="server">
                                Every human inhabiting the world of Alcia is branded by a “Count” or a number written on
                                their body. For Hina’s mother, her total drops to 0 and she’s pulled into the Abyss,
                                never to be seen again. But her mother’s last words send Hina on a quest to find a
                                legendary hero from the Waste War - the fabled Ace!
                            </p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                           <%-- <li><span>Type:</span> TV Series</li>--%>
                                           <%-- <li><span>Studios:</span> Lerche</li>--%>
                                            <li id="year" runat="server"><span>Release year:</span></li>
                                            <li id="date" runat="server"><span>Show date:</span></li>
                                             <li id="time" runat="server"><span>Show time:</span></li>
                                            <%--<li><span>Status:</span> Airing</li>--%>
                                            <li id="genre" runat="server"><span>Genre:</span></li>
                                             <li id="Duration" runat="server"><span>Duration:</span></li>
                                            <li><span>Quality:</span>HD</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
<%--                                        <ul>
                                            <li><span>Scores:</span> 7.31 / 1,515</li>
                                            <li><span>Rating:</span> 8.5 / 161 times</li>
                                            <li><span>Duration:</span> 24 min/ep</li>
                                            <li><span>Quality:</span> HD</li>
                                            <li><span>Views:</span> 131,541</li>
                                        </ul>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <!--<a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Follow</a>-->
                               <a href="#" class="follow-btn" style="background-color:darkred" onclick="makeFullScreen()" >
                                    <span>Trailer  <i class="fa-sharp fa-solid fa-play"></i></span>
                                </a>
                                <a id="btn" runat="server" href="#" class="watch-btn">
                                    <span style="background-color:darkred">Book Now</span> <i style="background-color:darkred" class="fa fa-angle-right"></i>
                                </a>
                               

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="section"></div>
    </section>

    <!-- Anime Section End -->

<div id="model">
              <div class="close-icon" onclick="closeModal()">&times;</div>
             <%--    <span class="close" onclick="closeModal()">&times;</span>--%>
              <%--<span class="close" onclick="closeModal()">&times;</span>--%>
<iframe runat="server" id="iframeId"  width="100%" height="100%" src="https://www.youtube.com/embed/YHO6EDIbGlk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen ></iframe>
    
              </div>



    <!-- Search model end -->
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



<script>



    //var iframeUrl = element.getAttribute('data-iframe');
    //document.getElementById("myIframe").src = iframeUrl;

    const iframe = document.querySelector("iframe");
    function openModal(movieId) {
        //var currentUrl = window.location.href;
        //var newUrl = currentUrl + "?movieId=" + movieId;
        //window.location.assign(newUrl);

        document.getElementById("navbar").style.display = "none";
        document.getElementById("f").style.display = "none";
        document.getElementById("myModal").style.display = "block";
        /*      iframe.src = item.iframe;*/
        event.preventDefault();
        iframe.classList.add("fullscreen");

    }

    function closeModal() {

        /*  document.getElementById("myModal").classList.add("modal-open");*/
        let iframe = document.getElementById("model");
        iframe.style.display = "none";
        //document.getElementById("navbar").style.display = "block";
        //document.getElementById("f").style.display = "block";
        //location.reload();
        console.log("ttttttt")
        location.reload();
    }
    function makeFullScreen() {
        console.log("123");
        console.log(document.getElementById("model"))
        let iframe = document.getElementById("model");
        iframe.style.display = "block";
        //iframe.requestFullscreen();
        /*  document.getElementById("FRAME").style.display ="block";*/
    }


        </script>
</asp:Content>
