<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Edite_Show.aspx.cs" Inherits="Movie_tickets.Admin.WebForm7" %>
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

           border:solid 3px #579BB1;
           width:40%;
           height:450px;
           border-radius:20%;
           margin-left:30%;
           margin-top:5%;
            
        }
            .lable{
            color:#579BB1;
           
            font-size:large;
            margin-left:20%;
        }
             .text_box{

            border:solid 2px #579BB1;
     width:60%;
     height:30px;
     margin-left:20%;

        }
             .text_box2{

            border:solid 2px #579BB1;
     width:30%;
     height:30px;
    margin-left:20%;

        }
              .text_box3{

            border:solid 2px #579BB1;
     width:30%;
     height:30px;
   

        }
                .drop{
                  border:solid 2px #579BB1;
                  width:60%;
                   height:30px;
                    margin-left:20%;
            }
                 .btn_add{
              border:solid 2px #579BB1;
             border-radius:30px;
             color:white;
             background-color:#579BB1;
             margin-left:25%;
             font-weight:bold;
             padding:5px;
        }
        .btn_can{
              border:solid 2px #579BB1;
             border-radius:20px;
             color:white;
             background-color:#579BB1;
             margin-left:15%;
             font-weight:bold;
             padding:5px;
        }
    </style>
      <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Edit Show</h1>
    </div>
      <asp:Label ID="dateholder" runat="server" Text="Label"></asp:Label>
     <div class="big_div" >
        <h1>Edit Show Time</h1>
        <asp:Label ID="Label1" runat="server" Text="Show Date" CssClass="lable"></asp:Label><br />
        <asp:TextBox ID="Textdate" runat="server" placeholder="" type="date" CssClass="text_box"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Start Time" CssClass="lable"></asp:Label><br />
        <asp:TextBox ID="Textstarthour" runat="server"  placeholder="hour" type="Number" min="0" CssClass="text_box2">  </asp:TextBox> <asp:TextBox ID="Textstartmin" runat="server" placeholder="minutes" type="Number" min="0" CssClass="text_box3" ></asp:TextBox><br /><br />
        <asp:Label ID="Label3" runat="server" Text="End Time" CssClass="lable"></asp:Label><br />
         <asp:TextBox ID="TextEndhour" runat="server"  placeholder="hour" type="Number" min="0" CssClass="text_box2">  </asp:TextBox> <asp:TextBox ID="TextEndmin" runat="server" placeholder="minutes" type="Number" min="0" CssClass="text_box3"></asp:TextBox><br /><br />
         <asp:Label ID="Label4" runat="server" Text="Choose Movie" CssClass="lable"></asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop"></asp:DropDownList><br /><br />
           
        <asp:Button ID="ButtonAdd" runat="server" Text="Save Changes"  CssClass="btn_add" OnClick="ButtonAdd_Click" /><asp:Button ID="cancle" runat="server" Text="Cancle"  CssClass="btn_can" OnClick="cancle_Click" />


    </div>
</asp:Content>
