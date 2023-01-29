<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Movie_tickets.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}
.textbox{
    margin-left:6%;
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
   </style>
    <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Movies</h1>
    </div>

   
    <asp:TextBox ID="TextSearch" runat="server" placeholder="Search by Name" CssClass="textbox" OnTextChanged="TextSearch_TextChanged"></asp:TextBox><asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn_search" OnClick="ButtonSearch_Click" />
    <asp:Button ID="ButtonAdd" runat="server" Text="+ Add Movies" CssClass="btn_add" OnClick="ButtonAdd_Click" />
    <br /> <br />
    <div class="container">
          <div class="links">
              <asp:LinkButton runat="server" ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server" ID="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
        <asp:GridView AllowPaging="True" ID="GridView1" runat="server" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
            
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
            <Columns>
                <asp:BoundField DataField="Movie_Id" HeaderText="ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" />
                <asp:BoundField DataField="Release_Date" DataFormatString="{0:dd/MM/yyyy}"  HeaderText="Release Date" />
                <asp:BoundField DataField="genre" HeaderText="genre" />
                <asp:BoundField DataField="Movie_Description" HeaderText="Description" />
                <asp:BoundField DataField="Trailer" HeaderText="Trailer link" />
                <asp:ImageField DataImageUrlField="Movie_Image" HeaderText="photo" ControlStyle-Width="100" ControlStyle-Height="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="Movie_Id" DataNavigateUrlFormatString="EditeMovies.aspx?ID={0}" HeaderText="Edit" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="Movie_Id" DataNavigateUrlFormatString="DeleteMovies.aspx?ID={0}" HeaderText="Delete" Text="Delete" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
