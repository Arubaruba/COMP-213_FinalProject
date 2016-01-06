<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitions.Master" AutoEventWireup="true" CodeBehind="Artifacts.aspx.cs" Inherits="FinalProject.Artifacts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
    <asp:SqlDataSource ID="ArtifactsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString %>" ProviderName="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString.ProviderName %>"
        SelectCommand='SELECT artifact.name AS "Artifact", exhibition.name AS "Exhibition", origin_year AS "Year"
        FROM artifact JOIN exhibition ON exhibition.id = artifact.exhibition_id
        WHERE (artifact.exhibition_id = ? OR ? = -1) AND lower(artifact.name) LIKE &#039;%&#039; || lower(?) || &#039;%&#039;'>
        <SelectParameters>
            <asp:ControlParameter ControlId="ExhibitionsDropdownList" DbType="Int32" DefaultValue="-1" />
            <asp:ControlParameter ControlId="ExhibitionsDropdownList" DbType="Int32" DefaultValue="-1" />
            <asp:FormParameter FormField="key_terms" DbType="String" DefaultValue="_" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="ExhibitionsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:historical_exhibitionsDevartConnectionString %>" ProviderName="<%$ ConnectionStrings:historical_exhibitionsConnectionString.ProviderName %>"
        SelectCommand="SELECT id, name FROM exhibition">
    </asp:SqlDataSource>

    <h3><i class="fa fa-beer"></i>
        Artifacts</h3>
    <hr />

    <div class="row">

        <div class="large-5 columns">
            <asp:DropDownList
                ID="ExhibitionsDropdownList"
                runat="server"
                DataValueField="id"
                DataTextField="name"
                DataSourceID="ExhibitionsSqlDataSource"
                AppendDataBoundItems="true">
                <asp:ListItem Value="-1" Text="Any Exhibition" Selected="True" />
            </asp:DropDownList>
        </div>
        <div class="large-3 columns">
            <input type="text" name="key_terms" placeholder="Key Terms" />
        </div>
        <div class="large-2 columns">
            <input type="submit" class="button" value="Search" style="width: 100%; box-sizing: border-box" />
        </div>
        <div class="large-2 columns">&nbsp;</div>
    </div>
    <div class="row">
        <div class="large-12 columns">
            <asp:GridView ID="ArtifactsGridView" runat="server" DataSourceID="ArtifactsSqlDataSource" CssClass="artifacts-table" />
        </div>
    </div>
</asp:Content>
