<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SeatPage.aspx.cs" Inherits="project7.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
  body{
  background-color:black;
  
 }
.SeatInfoContain {
  
}
.Piccontain{
    padding-top: 9rem;
    width:60%;
    text-align:center;
}
.SeatChoise{
    width:40%;
    padding-top:10rem;
}
.SeatInfoContain{
    display:flex;
    position: relative;
}
.SeatNumLable{
    
}
.SeatButton1{
    text-align:center;
    padding: 5px 5px 5px 10px;
  position: absolute;
  bottom: 0px;
  width: 457px;
}
.SeatButton{
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid darkred;
  border-radius:20px;
}
.SeatButton:hover{
     background-color: darkred;
  color: white;
}
.ttt{
   

}
.lablestyle{
    color:white;
    font-size:30px;
}
.lablestyle2{
    color:white;
}
.DeleteButton{
padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid darkred;
  border-radius:20px;
}
.DeleteButton:hover{
  background-color: darkred;
  color: white;
}
@media only screen and (min-device-width: 0px) and (max-device-width: 480px){
.SeatInfoContain{
    flex-wrap:wrap;
}
.Piccontain{
    
    width:100%;
    
}
/*.SeatChoise{
    width:100%;
   display:flex;
   flex-wrap:wrap;
}*/
.SeatInfoContain{
   width:100%;
   flex-wrap:wrap;
}
.lablediv{
    width:100%;
}
.SeatChoise {
    width: 100%;
   
}
.cccc{
    height: 74px !important;
    width: 299px !important;
    font-size: 39px !important;
    
}
.SeatButton1 {
    width: 100%;
}
}
@media only screen and (min-device-width: 481px) and (max-device-width: 768px) { 
    .SeatInfoContain{
    flex-wrap:wrap;
}
.Piccontain{
    
    width:100%;
    
}
/*.SeatChoise{
    width:100%;
   display:flex;
   flex-wrap:wrap;
}*/
.SeatInfoContain{
   width:100%;
   flex-wrap:wrap;
}
.lablediv{
    width:100%;
}
.SeatChoise {
    width: 100%;
   
}
.cccc{
    height: 74px !important;
    width: 299px !important;
    font-size: 39px !important;
    
}
.SeatButton1 {
    width: 100%;
}
}
           

        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="SeatInfoContain">
        <div class="Piccontain">
            <img src="img/karasypic2.PNG" alt="Alternate Text" />
        </div>
        <div class="SeatChoise">
            <asp:Label ID="Label1" runat="server" Text="Avalable  Seat Number :" CssClass="SeatNumLable  lablestyle"></asp:Label>

            <asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle  cccc" Height="39px" Width="133px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">seat (1)</asp:ListItem>
                <asp:ListItem Value="2">seat (2)</asp:ListItem>
                <asp:ListItem Value="3">seat (3)</asp:ListItem>
                <asp:ListItem Value="4">seat (4)</asp:ListItem>
                <asp:ListItem Value="5">seat (5)</asp:ListItem>
                <asp:ListItem Value="6">seat (6)</asp:ListItem>
                <asp:ListItem Value="7">seat (7)</asp:ListItem>
                <asp:ListItem Value="8">seat (8)</asp:ListItem>
                <asp:ListItem Value="9">seat (9)</asp:ListItem>
                <asp:ListItem Value="10">seat (10)</asp:ListItem>
                <asp:ListItem Value="11">seat (11)</asp:ListItem>
                <asp:ListItem Value="12">seat (12)</asp:ListItem>
                <asp:ListItem Value="13">seat (13)</asp:ListItem>
                <asp:ListItem Value="14">seat (14)</asp:ListItem>
                <asp:ListItem Value="15">seat (15)</asp:ListItem>
                <asp:ListItem Value="16">seat (16)</asp:ListItem>
                <asp:ListItem Value="17">seat (17)</asp:ListItem>
                <asp:ListItem Value="18">seat (18)</asp:ListItem>
                <asp:ListItem Value="19">seat (19)</asp:ListItem>
                <asp:ListItem Value="20">seat (20)</asp:ListItem>
                <asp:ListItem Value="21">seat (21)</asp:ListItem>
                <asp:ListItem Value="22">seat (22)</asp:ListItem>
                <asp:ListItem Value="23">seat (23)</asp:ListItem>
                <asp:ListItem Value="24">seat (24)</asp:ListItem>
                <asp:ListItem Value="25">seat (25)</asp:ListItem>
                <asp:ListItem Value="26">seat (26)</asp:ListItem>
                <asp:ListItem Value="27">seat (27)</asp:ListItem>
                <asp:ListItem Value="28">seat (28)</asp:ListItem>
                <asp:ListItem Value="29">seat (29)</asp:ListItem>
                <asp:ListItem Value="30">seat (30)</asp:ListItem>
                <asp:ListItem Value="31">seat (31)</asp:ListItem>
                <asp:ListItem Value="32">seat (32)</asp:ListItem>
                <asp:ListItem Value="33">seat (33)</asp:ListItem>
                <asp:ListItem Value="34">seat (34)</asp:ListItem>
                <asp:ListItem Value="35">seat (35)</asp:ListItem>
                <asp:ListItem Value="36">seat (36)</asp:ListItem>
                <asp:ListItem Value="37">seat (37)</asp:ListItem>
                <asp:ListItem Value="38">seat (38)</asp:ListItem>
                <asp:ListItem Value="39">seat (39)</asp:ListItem>
                <asp:ListItem Value="40">seat (40)</asp:ListItem>
                <asp:ListItem Value="41">seat (41)</asp:ListItem>
                <asp:ListItem Value="42">seat (42)</asp:ListItem>
                <asp:ListItem Value="43">seat (43)</asp:ListItem>
                <asp:ListItem Value="44">seat (44)</asp:ListItem>
                <asp:ListItem Value="45">seat (45)</asp:ListItem>
                <asp:ListItem Value="46">seat (46)</asp:ListItem>
                <asp:ListItem Value="47">seat (47)</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Warning" runat="server" CssClass="lablestyle2"></asp:Label>

            <br />
            <br />
            <%--lables and delete button--%>
            <div >
                <div >
                    <div class="lablediv">

                        <asp:Label ID="Label2" CssClass="lablestyle" runat="server" Text="Your Seats :"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" CssClass="lablestyle" runat="server"></asp:Label>
                    </div>
                </div>
                
                <div >
                    <div >
                        <div  style="padding-left: 0rem;">
                        </div>
                    </div>
                    <div >
                        <div>
                            <asp:Label ID="Label4" CssClass="lablestyle" runat="server"></asp:Label>


                        </div>
                    </div>
                     <div class="SeatButton1">

                    <asp:Button ID="Button2" CssClass="DeleteButton" runat="server" Text="Delete Seat" OnClick="Button2_Click" />

                    <asp:Button ID="Button1" runat="server" Text="Continue" CssClass="SeatButton" OnClick="Button1_Click" />
                </div>
                </div>
               
            </div>
            
        </div>
        
    </div>
    
    
    <br />
    <br />
</asp:Content>
