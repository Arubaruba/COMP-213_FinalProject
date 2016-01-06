<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitions.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProject.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h3>Admin</h3>
    <hr />
    <table class="admin-items-table">
        <tr>
            <th>Item</th>
            <th>Count</th>
            <th></th>
        </tr>
        <tr>
            <td>Exhibition</td>
            <td>3</td>
            <td><a>Add Another</a></td>
        </tr>
        <tr>
            <td>Exhibition</td>
            <td>3</td>
            <td><a class="button small">Add Another</a></td>
        </tr>
        <tr>
            <td>Exhibition</td>
            <td>3</td>
            <td><a>Add Another</a></td>
        </tr>
    </table>
</asp:Content>
