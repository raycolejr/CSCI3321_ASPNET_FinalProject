<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.BookTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <asp:Table ID="tblBookList" runat="server" CssClass="table table-striped">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Title</asp:TableHeaderCell>
            <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publisher</asp:TableHeaderCell>
            <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
        </asp:TableHeaderRow>

    </asp:Table>


</asp:Content>
