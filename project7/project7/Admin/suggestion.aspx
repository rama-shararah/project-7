<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="suggestion.aspx.cs" Inherits="Movie_tickets.Admin.WebForm10" %>
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
    margin-left:7%;
    border:solid 2px #579BB1;
    margin-top:4%;
}
.btn_search{
    border:solid 2px #579BB1;
    background-color:#579BB1;
    color:white;
}


    </style>
    <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Suggestion</h1>
    </div>
    <div class="search">
      <asp:TextBox ID="TextSearch" runat="server" placeholder="Search by Movie Type"  OnTextChanged="TextSearch_TextChanged"></asp:TextBox><asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn_search" OnClick="ButtonSearch_Click" /><br /><br />
    </div>
        <div class="container"> 
        <div class="links">
              <asp:LinkButton runat="server" ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server" ID="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="username" HeaderText="User Name" />
            <asp:BoundField DataField="moviename" HeaderText="Movie Name" />
            <asp:BoundField DataField="movie_history" HeaderText="Movie History" />
            <asp:BoundField DataField="movie_type" HeaderText="Movie Type" />
            <asp:BoundField DataField="siggestion" HeaderText="Siggestion" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="DeleteSugg.aspx?ID={0}" HeaderText="Delete" Text="Delete" />
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
