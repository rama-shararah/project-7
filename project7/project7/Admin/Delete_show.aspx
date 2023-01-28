<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Delete_show.aspx.cs" Inherits="Movie_tickets.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
          h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}
          .details{
              margin-top:5%;
              color:#579BB1;
              font-weight:bold;
             
          }
            .btn_can{
              border:solid 2px #579BB1;
             border-radius:20px;
             color:white;
             background-color:#579BB1;
             margin-left:30%;
             font-weight:bold;
             padding:5px;
             font-size:x-large;
        }
             .btn_dele{
              border:solid 2px #579BB1;
             border-radius:20px;
             color:white;
             background-color:#579BB1;
             margin-left:25%;
             font-weight:bold;
             padding:5px;
             font-size:x-large;
        }
    </style>
     <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Delete Show</h1>
    </div>

     <div class="container">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" class=" table table-striped details" BorderStyle="Dashed" ></asp:DetailsView>
        </div>
    <br />
    <asp:Button ID="ButtonDelete" runat="server" Text="Delete" CssClass="btn_dele" OnClick="ButtonDelete_Click" /><asp:Button ID="ButtonCancle" runat="server" Text="Cancle" CssClass="btn_can" OnClick="ButtonCancle_Click" />
</asp:Content>
