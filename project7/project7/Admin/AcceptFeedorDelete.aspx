<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AcceptFeedorDelete.aspx.cs" Inherits="Movie_tickets.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}

        .div_Accept{

               width:60%;
               height:300px;
               border:solid 2px #579BB1;
               margin-top:11%;
               margin-left:20%;
               border-radius:20px;

               box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
-webkit-box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
-moz-box-shadow: 17px 9px 45px 0px rgba(87,155,177,0.45);
           }

        .textbox{
            border:solid 2px #579BB1;
            margin-top:8%;
            margin-left:25%;
            width:40%;
            height:40px;
        }
        .btn_save{
            color:white;
          border:solid 2px #579BB1;
          background-color:#579BB1;
          height:40px;
        }

        .btn_del{
             color:white;
          border:solid 2px #579BB1;
          background-color:#579BB1;
          padding:10px;
          margin-left:25%;
          border-radius:20px;
        }
    </style>
     <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Accept or Delete Feedback</h1>
    </div>
    <br />
    <br /> <br />

    <div class="container  div_Accept">
        <asp:TextBox ID="TextBox1" runat="server" placeholder="To Accept Enter True " CssClass="textbox" ></asp:TextBox><asp:Button ID="ButtonSave" runat="server" Text="Save" CssClass="btn_save" OnClick="ButtonSave_Click"/>   
        <br /> <br /> <br /> 
  
    <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn_del" OnClick="Delete_Click" /> <asp:Button ID="Cancle" runat="server" Text="Cancle" OnClick="Cancle_Click"  CssClass="btn_del"/>

          </div>

</asp:Content>
