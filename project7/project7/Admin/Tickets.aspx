<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="Movie_tickets.Admin.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1{
    text-align:center;
    color:#579BB1;
    padding-top:2%;
}
    </style>
     <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Tickets</h1>
    </div>
    <div class="search">
       <asp:TextBox ID="TextSearch" runat="server" placeholder="Search by Movie name or User Name"></asp:TextBox><asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn_search" OnClick="ButtonSearch_Click" />
   </div>    <br /> <br /><br />

    <div class="container">
       <div class="links">
              <asp:LinkButton runat="server" ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server" ID="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="Ticket_id" HeaderText="ID" />
                <asp:BoundField DataField="Ticket_Date" HeaderText="Ticket Date"  DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="First_name" HeaderText="Name" />
                <asp:BoundField DataField="Show_Date" HeaderText="Show Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Title" HeaderText="Movie Name" />
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
