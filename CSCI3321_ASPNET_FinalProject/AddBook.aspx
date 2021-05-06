<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
            <div class="col-md-3">Title: </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

            <div class="col-md-3">Price: </div>
                <div class="col-md-9">
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


             <div class="col-md-3">Publish Date: </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtPubDate" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

        
             <div class="col-md-3">Word Count: </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtWordCount" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>


            
        <div class="col-md-3">Author:</div>
        <div class="cold-md-9">
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="dsdAuthor" DataTextField="LastName" DataValueField="AuthorID" CssClass="form-control">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName, FirstName FROM Authors"></asp:SqlDataSource>
            </div>

                <div class="col-md-3">Publisher:</div>
        <div class="cold-md-9">
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="dsdPublisher" DataTextField="PublisherName" DataValueField="PublisherID" CssClass="form-control">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
            </div>

        <div class="col-md-3">Genre:</div>
        <div class="cold-md-9">
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="dsdGenre" DataTextField="GenreName" DataValueField="GenreID" CssClass="form-control">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
            </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </div>

    </div>
</asp:Content>
