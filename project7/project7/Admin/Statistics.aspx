<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="Movie_tickets.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
           h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}
  .big_div{ 
      display:flex;
      flex-direction:row;
      justify-content:space-around;
      flex-wrap:wrap;
    
   

     
  }
           
           .div_users{

               width:30%;
               height:150px;
               border:solid 2px #579BB1;
               margin-top:11%;
               margin-left:5%;
               border-radius:20px;

               box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
-webkit-box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
-moz-box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
           }
           .lable1{
               font-size:35px;
               font-weight:bold;
               color:gray;

           }
           .lable2{
               font-size:xx-large;
               font-weight:bold;
               color:black;
               margin-left:45%;

           }
    </style>
     <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Statistics</h1>
    </div>

    <div class="container  big_div">

        <div class="div_users">
            
            <i class="fa-sharp fa-solid fa-users" style="color:#674188; font-size:65px; margin-left:15% ; margin-top:10%;"></i>
            <asp:Label ID="User" runat="server" Text="Users" CssClass="lable1"></asp:Label><br />
            <asp:Label ID="user1" runat="server" Text="" CssClass="lable2"></asp:Label>


        </div>

         <div class="div_users">
            
            <i class="fa-sharp fa-solid fa-chart-column" style="color:#820000; font-size:65px; margin-left:15% ; margin-top:10%;"></i>
            <asp:Label ID="Mov" runat="server" Text="Movies" CssClass="lable1"></asp:Label><br />
            <asp:Label ID="Movy" runat="server" Text="" CssClass="lable2"></asp:Label>

    

        </div>
      
        
         <div class="div_users">
            
            <i class="fa-solid fa-chart-simple" style="color:#0081C9; font-size:65px; margin-left:13% ; margin-top:10%;"></i>
            <asp:Label ID="sug" runat="server" Text="Suggestion" CssClass="lable1"></asp:Label><br />
            <asp:Label ID="sug1" runat="server" Text="" CssClass="lable2"></asp:Label>

    
        </div>

         <div class="div_users">
            
            <i class="fa-sharp fa-solid fa-ticket" style="color:#F2921D; font-size:65px; margin-left:13% ; margin-top:10%;"></i>
            <asp:Label ID="TIC" runat="server" Text="Tickets" CssClass="lable1"></asp:Label><br />
            <asp:Label ID="Tick" runat="server" Text="" CssClass="lable2"></asp:Label>

    
        </div>
    </div>
</asp:Content>
