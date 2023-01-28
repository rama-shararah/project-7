<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ALL.aspx.cs" Inherits="project7.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        }

.fa-eye{
    color:black;
}
.fa-link{
    color:black;
}

.service-item .service-text{
    background: #ffffff22 !important;
}

h4{
    color:black;
    opacity:0;
}
.service-item:hover .service-text:hover{
      background: #00000082 !important;

}
.service-item:hover .service-text:hover h4{
      opacity:1;

}
.service-item:hover .service-text:hover .mb-4{
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
    color: black !important;
    opacity:0;
}

.page-link{
    color:black !important;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br />
    <br />
<div style="display:flex; justify-content:center;">  
    <nav aria-label="Page navigation example">
  <ul class="pagination">
      <li class="page-item"><asp:Button ID="Button7" class="page-link" runat="server" Text="Week Movies" OnClick="Button7_Click" /></li>
    <li  class="page-item">
        <asp:Button ID="Button1" class="page-link" runat="server" Text="Button" OnClick="Button1_Click" /></li>
    <li class="page-item"><asp:Button ID="Button2" class="page-link" runat="server" Text="Button" OnClick="Button2_Click" /></li>
    <li class="page-item"><asp:Button ID="Button3" class="page-link" runat="server" Text="Button" OnClick="Button3_Click" /></li>
      <li class="page-item"><asp:Button ID="Button4" class="page-link" runat="server" Text="Button" OnClick="Button4_Click" /></li>
      <li class="page-item"><asp:Button ID="Button5" class="page-link" runat="server" Text="Button" OnClick="Button5_Click" /></li>
      <li class="page-item"><asp:Button ID="Button6" class="page-link" runat="server" Text="Button" OnClick="Button6_Click" /></li>
    <li class="page-item">

    </li>
  </ul>
</nav></div>

    <br />
    <br />
   
    <div class="container" id="containerr" runat="server" style="display:flex; flex-wrap:wrap; width:100%; gap:3rem 3rem;"></div>


</asp:Content>
