<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitions.Master" AutoEventWireup="true" CodeBehind="Artifacts.aspx.cs" Inherits="FinalProject.Artifacts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
    <h3><i class="fa fa-beer"></i> Artifacts</h3>
    <hr />

    <div class="row">
        <div class="large-5 columns">
            <select>
                <option value="any">Any Exhibition</option>
                <option value="husker">Husker</option>
                <option value="starbuck">Starbuck</option>
                <option value="hotdog">Hot Dog</option>
                <option value="apollo">Apollo</option>
            </select>
        </div>
        <div class="large-3 columns">
            <input type="text" placeholder="Key Terms" />
        </div>
        <div class="large-2 columns">
            <input type="submit" class="button" value="Search" style="width:100%; box-sizing:border-box"/>
        </div>
        <div class="large-2 columns">
            &nbsp;
        </div>
    </div>

</asp:Content>
