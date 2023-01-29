<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Shows.aspx.cs" Inherits="Movie_tickets.Admin.WebForm5" %>
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
    </style>
      <div style="position: sticky; top: 0; height: 100px; background-color: white; box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-webkit-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);
-moz-box-shadow: 12px 14px 39px 3px rgba(0,0,0,0.39);">
<h1>Show Times</h1>
    </div>

   <asp:TextBox ID="TextSearch" runat="server" placeholder="Search by Name" CssClass="textbox" OnTextChanged="TextSearch_TextChanged"></asp:TextBox><asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn_search" OnClick="ButtonSearch_Click" />
    <asp:Button ID="ButtonAdd" runat="server" Text="+ Add Shows" CssClass="btn_add" OnClick="ButtonAdd_Click" />
    <br /> <br /><br />

      <div class="container">
            <div class="links">
              <asp:LinkButton runat="server"  ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server"  ID="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
          <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" AutoGenerateColumns="False">
              <Columns>
                  <asp:BoundField DataField="Show_id" HeaderText="ID" />
                  <asp:BoundField DataField="Title" HeaderText="Movie Name" />
                  <asp:BoundField DataField="Show_Date" HeaderText="Show Date" DataFormatString="{0:dd/MM/yyyy}" />
                  <asp:BoundField DataField="Show_Start_Date" HeaderText="Start Time" />
                  <asp:BoundField DataField="Show_End_Date" HeaderText="End Time" />
                  <asp:HyperLinkField DataNavigateUrlFields="Show_id" DataNavigateUrlFormatString="Edite_Show.aspx?ID={0}" HeaderText="Edit" Text="Edit" />
                  <asp:HyperLinkField DataNavigateUrlFields="Show_id" DataNavigateUrlFormatString="Delete_show.aspx?ID={0}" HeaderText="Delete" Text="Delete" />
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
