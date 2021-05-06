<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublisher.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
            
         <div class="col-md-3">Publisher:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtPublisher" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

          <div class="col-md-3">Address:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

                 <div class="col-md-3">City:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

                 <div class="col-md-3">Postal Code:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtPostal" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

                     <div class="col-md-3">Country:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

                     <div class="col-md-3">Phone:</div>
            <div class="col-md-9">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

           <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitPublisher" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmitPublisher_Click"/>
        </div>

    </div>
</asp:Content>
