<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Movie_tickets.Admin.WebForm12" %>
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
    width:25%;
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
<h1>Feedback</h1>
    </div>

    <br /><br /><br />
    <div class="container ">
        <div class="links">
               <div> Show Non-Accepted Comments Only</div>     <asp:CheckBox runat="server" ID="AcceptedFeedBack" OnCheckedChanged="ButtonSearch_Click" AutoPostBack="true"/>

              <asp:LinkButton runat="server" ID="excel" OnClick="printExcel">Export Into Excel</asp:LinkButton>
            <asp:LinkButton runat="server" id="pdf" OnClick="printPdf">Export Into PDF</asp:LinkButton></div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="FeedBack_id" HeaderText="ID" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" />
                <asp:BoundField DataField="approve" HeaderText="Approve" />
                <asp:HyperLinkField DataNavigateUrlFields="FeedBack_id" DataNavigateUrlFormatString="AcceptFeedorDelete.aspx?ID={0}" HeaderText="Accept" Text="Accept" />
                <asp:HyperLinkField DataNavigateUrlFields="FeedBack_id" DataNavigateUrlFormatString="AcceptFeedorDelete.aspx?ID={0}" HeaderText="Delete" Text="Delete" />
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
