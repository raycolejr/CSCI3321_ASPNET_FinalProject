<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthor.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Add Author</h3>

    <div class ="row">
        <div class="col-md-3">
            Last Name:
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            First Name:
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">Gender:</div>
            <div class="col-md-9">
            
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem>No Answer</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>

                <div class="col-md-3">
            Birth Date:
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control">YYYY-MM-DD</asp:TextBox>
        </div>
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </div>
    </div>

</asp:Content>
