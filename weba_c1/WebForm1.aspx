<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="weba_c1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Entity" HeaderText="Entity" SortExpression="Entity" />
            <asp:BoundField DataField="GL_BATCH" HeaderText="GL_BATCH" SortExpression="GL_BATCH" />
            <asp:BoundField DataField="Appr_LEVEL" HeaderText="Appr_LEVEL" SortExpression="Appr_LEVEL" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Backgd_Issue" HeaderText="Backgd_Issue" SortExpression="Backgd_Issue" />
            <asp:BoundField DataField="Action_plan" HeaderText="Action_plan" SortExpression="Action_plan" />
            <asp:BoundField DataField="Mth" HeaderText="Mth" SortExpression="Mth" />
            <asp:BoundField DataField="PL_balance" HeaderText="PL_balance" SortExpression="PL_balance" />
            <asp:BoundField DataField="Upload_date" HeaderText="Upload_date" SortExpression="Upload_date" />
            <asp:CheckBoxField DataField="Lock" HeaderText="Lock" SortExpression="Lock" />
            <asp:BoundField DataField="Prepared" HeaderText="Prepared" SortExpression="Prepared" />
            <asp:BoundField DataField="Reviewed" HeaderText="Reviewed" SortExpression="Reviewed" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NSTConnectionString %>" SelectCommand="SELECT * FROM [adjrpt_detail]"></asp:SqlDataSource>
</asp:Content>
