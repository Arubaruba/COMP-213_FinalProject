<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitions.Master" AutoEventWireup="true" CodeBehind="SpecialEvents.aspx.cs" Inherits="FinalProject.SpecialEvents" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
    <h3><i class="fa fa-group"></i>
        Special Events</h3>
    <hr />

    <asp:SqlDataSource ID="SpecialEventsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString %>" ProviderName="<%$ ConnectionStrings:historical_exhibitionsConnectionString.ProviderName %>"
        SelectCommand='SELECT special_event.name AS special_event, exhibition.name AS exhibition, special_event.begins FROM special_event JOIN exhibition ON exhibition.id = special_event.id
         WHERE special_event.begins > NOW()'></asp:SqlDataSource>
    <asp:Repeater runat="server" DataSourceID="SpecialEventsSqlDataSource">
        <ItemTemplate>
            <p>
                <h5><%# DataBinder.Eval(Container.DataItem, "special_event")%></h5>
                <i><%# DataBinder.Eval(Container.DataItem, "exhibition")%></i> - 
                <%# DataBinder.Eval(Container.DataItem, "begins")%>
            </p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
