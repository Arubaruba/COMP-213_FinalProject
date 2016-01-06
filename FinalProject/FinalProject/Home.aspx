<%@ Page Title="Exhibitions" Language="C#" MasterPageFile="~/Exhibitions.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:SqlDataSource ID="ExhibitionsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString %>" ProviderName="<%$ ConnectionStrings:historical_exhibitionsConnectionString.ProviderName %>"
        SelectCommand="SELECT id, name, description FROM exhibition"></asp:SqlDataSource>

    <h3><i class="fa fa-bank"></i>
        Museums</h3>
    <hr />

    <asp:SqlDataSource ID="MuseumsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString %>" ProviderName="<%$ ConnectionStrings:historical_exhibitionsConnectionString.ProviderName %>"
        SelectCommand="SELECT name, description FROM exhibition WHERE type = 'Museum'"></asp:SqlDataSource>
    <asp:Repeater runat="server" DataSourceID="MuseumsSqlDataSource">
        <ItemTemplate>
            <p>
                <h5><%# DataBinder.Eval(Container.DataItem, "name")%></h5>
                <%# DataBinder.Eval(Container.DataItem, "description")%>
            </p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
