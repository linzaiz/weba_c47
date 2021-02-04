<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="weba_c1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDSSub">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDSSub" runat="server" ConnectionString="<%$ ConnectionStrings:NSTConnectionString %>" ProviderName="<%$ ConnectionStrings:NSTConnectionString.ProviderName %>" SelectCommand="SELECT Sub_ID, ID, Account, Hyperion_ACC, HFM_DESC, Assets, Liability, Equity, P_L, Remark FROM adjrpt_sub"></asp:SqlDataSource>
</asp:Content>
