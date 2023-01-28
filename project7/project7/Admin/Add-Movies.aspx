﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Add-Movies.aspx.cs" Inherits="Movie_tickets.Admin.WebForm2" %>
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
           width:50%;
           height:700px;
           border-radius:15%;
           margin-left:30%;
           margin-top:5%;
            
        }
        h2{
             text-align:center;
    color:#579BB1;
    padding-top:3%;
        }
        .lable{
            color:#579BB1;
           
            font-size:large;
            margin-left:20%;
        }
        .text_box{

            border:solid 2px #579BB1;
           width:63%;
           height:30px;
            margin-left:20%;

        }

        .drop{
                  border:solid 2px #579BB1;
                  width:63%;
                   height:30px;
                    margin-left:20%;
            }
        .area{
            border:solid 2px #579BB1;
             margin-left:20%;
              width:63%;
        }
        .btn_upload{

             border:solid 2px #579BB1;
             border-radius:30px;
             color:white;
             background-color:#579BB1;
            
        }
        .file{
margin-left:20%;
        }
        .btn_add{
              border:solid 2px #579BB1;
             border-radius:30px;
             color:white;
             background-color:#579BB1;
             margin-left:28%;
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
           .validWarning {
         color:red;
         }
    </style>
     <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Add Movies</h1>
    </div>

    <div class="big_div">
        <h2>Add Movies</h2>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator CssClass="validWarning" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextTitle" ErrorMessage="Movie Title IS Required" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />

        <asp:TextBox ID="TextTitle" runat="server" placeholder="Movie Title" CssClass="text_box"></asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator CssClass="validWarning" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextDuration" ErrorMessage="Duration IS Required" Display="Dynamic"></asp:RequiredFieldValidator>

        <br />
        <asp:TextBox ID="TextDuration" runat="server" placeholder="Duration" CssClass="text_box"  ></asp:TextBox><br /><br />

       <asp:Label ID="Label2" runat="server" Text="Release_Date" CssClass="lable"></asp:Label>
                <asp:RequiredFieldValidator CssClass="validWarning" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextRelease_Date" ErrorMessage="Release Date IS Required" Display="Dynamic"></asp:RequiredFieldValidator>

        <br /> <asp:TextBox ID="TextRelease_Date" runat="server" placeholder="Duration" type="date"   CssClass="text_box"></asp:TextBox><br /><br />

        <asp:Label ID="Label1" runat="server" Text="Movie Genre" CssClass="lable"></asp:Label><br /><asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop">
            <asp:ListItem Value="Action">Action</asp:ListItem>
            <asp:ListItem Value="Comedy">Comedy</asp:ListItem>
            <asp:ListItem Value="Horror">Horror</asp:ListItem>
            <asp:ListItem Value="Romantic">Romantic</asp:ListItem>
            <asp:ListItem Value="Family">Family</asp:ListItem>
            <asp:ListItem Value="Adventure">Adventure</asp:ListItem>
        </asp:DropDownList><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:RequiredFieldValidator CssClass="validWarning" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Trailer" ErrorMessage="Trailer link IS Required" Display="Dynamic"></asp:RequiredFieldValidator>

        <asp:TextBox ID="Trailer" placeholder="Trailer link" runat="server" CssClass="text_box"></asp:TextBox><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Choose a picture" CssClass="lable"></asp:Label><br />
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file" accept=".png,.jpg,.jpeg,.gif"/><asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn_upload" OnClick="Button1_Click"  /><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:RequiredFieldValidator CssClass="validWarning" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextMovie_Description" ErrorMessage="Movie Description IS Required" Display="Dynamic"></asp:RequiredFieldValidator>

        <br />
        <textarea id="TextMovie_Description" cols="40" rows="4" placeholder="Description" maxlength="400" class="area"  runat="server"></textarea><br /><br />
        
        <asp:Label ID="LabelIMG" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Button ID="ButtonADD" runat="server" Text="Add Movie" CssClass="btn_add" OnClick="ButtonADD_Click" />   <asp:Button ID="ButtonCancle" runat="server" Text="Cancle" CssClass="btn_can" OnClick="ButtonCancle_Click" />


    </div>
    <br />
    <br />


</asp:Content>
