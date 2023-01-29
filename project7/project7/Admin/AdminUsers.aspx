<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="Movie_tickets.Admin.AdminUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
         h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}

          .textbox{
    margin-left:4%;
    border:solid 2px #579BB1;
    margin-top:4%;
}
.btn_search{
    border:solid 2px #579BB1;
    background-color:#579BB1;
    color:white;
}
.btn_add{
     border:solid 5px #579BB1;
    background-color:#579BB1;
    color:white;
    margin-left:60%;
    border-radius:30px;
    padding:5px;
}
.links 
           {
               display:flex;
               align-content:center;
               align-items:center;
               justify-content:center;
               gap:30px
           }
 .search {
               margin-top:100px;
           display:flex;
               align-content:center;
               align-items:center;
               justify-content:center;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Customers</h1>
    </div>
 <div class="search">
       <asp:TextBox ID="TextSearch" runat="server" placeholder="Search by Name"></asp:TextBox><asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn_search" OnClick="ButtonSearch_Click" />
   </div>    <br /> <br /><br />

         
              <div class="container" style="width:60%">
              <div class="links">
              <asp:LinkButton runat="server" ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server" ID="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
    <asp:GridView ID="Users" runat="server"  AutoGenerateColumns="False" Width="100%" >

        <Columns>
            <asp:BoundField DataField="First_name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" />
            <asp:ImageField DataImageUrlField="user_image" HeaderText="photo" ControlStyle-Width="100" ControlStyle-Height="100">
<ControlStyle Height="130px" Width="130px"></ControlStyle>                </asp:ImageField>

        </Columns>
         <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
    
    </asp:GridView>
              </div>
</asp:Content>
