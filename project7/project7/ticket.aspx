<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="project7.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        body {
            background-color:black;
        }
        .INFO1{
                  display:flex;
           justify-content:center;
           flex-wrap:wrap;


        }
        .backimg {
            
            background-image: url("img/tickett.png");
            background-size: contain;
            height: 70vh;
            width:80%;
            background-repeat:no-repeat;
           align-items:center;
       
     

        }

    

        .ticket {
            align-items: center;
            width: 900px;
        }

        .backimg {
            position: relative;
        }
            .info {
            display: grid;
          grid-template-columns:5% 95%;
          gap:50PX;
             position: absolute;
            top:200px;
            left: 32%;
            color: black;

           
        }
            .info p{
                font-weight:bold;
                font-size:20PX;
            }
      .CINEMATICK{
         text-align:center;
         align-items:center;
     
   
         padding:4PX 5PX;
         color:black;
         position:absolute;
         top:150px;
          left: 34%;
          border-radius:5px;
          font-weight:bold;
          font-size:30px;
          text-transform:capitalize;
         
     }
      .info p{
          text-transform:capitalize;
      }
    .wick{
        position:absolute;
        left:0;
        bottom:15px;
    }

      
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container INFO1" id="card" runat="server"></div>
        <%--FCARD--%>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        <%--<div class="backimg">
          

                <p class="CINEMATICK">CINEMA TICKET</p>
            <div  class="info">
              
                <div class="fcolumn">

  <p>seat:</p>
                 <p>Date:</p>
                 <p>price:</p>
                     <p> num:</p>
                        
                </div>
              
                <div class="scolumn">

  <p>s12</p>
                 <p>26/1/2023</p>
                 <p>10$</p>
                    <p>AB-1288444</p>

                </div>
                
                <p></p>
  
                  <p class="wick"> movie-name: Wicked </p>
            </div>
           
           
       






         
            

        </div>--%>
           <%--<img src="img\ticket.png" class="ticket" />--%>
        <%--FCARD--%>

            <%--<div class="backimg">
          

                <p class="CINEMATICK">CINEMA TICKET</p>
            <div  class="info">
              
                <div class="fcolumn">

  <p>seat:</p>
                 <p>Date:</p>
                 <p>price:</p>
                     <p> num:</p>
                        
                </div>
              
                <div class="scolumn">

  <p>s12</p>
                 <p>26/1/2023</p>
                 <p>10$</p>
                    <p>AB-1288444</p>

                </div>
                
                <p></p>
  
                  <p class="wick"> movie-name: Wicked </p>
            </div>
           
           
       






            <%--<img src="img\ticket.png" class="ticket" />--%>
            

<%--        </div>--%>




</asp:Content>
