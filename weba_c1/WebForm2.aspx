<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="weba_c1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
       <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />  
       <asp:Button ID="btnSub" runat="server" Text="Sub" onclick="btnSub_Click" />  
       <div>  
             <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
               <ContentTemplate>
                   <asp:FormView   
       ID="FormView1"   
       runat="server"   
       Width= "100%"  
       selectcommand="select * from [dbo].[adjrpt_detail] where id = 10" DataKeyNames="ID" DataSourceID="SqlDataSource1"  >
                       <EditItemTemplate>
                           ID:
                           <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                           <br />
                           Entity:
                           <asp:TextBox ID="EntityTextBox" runat="server" Text='<%# Bind("Entity") %>' />
                           <br />
                           GL_BATCH:
                           <asp:TextBox ID="GL_BATCHTextBox" runat="server" Text='<%# Bind("GL_BATCH") %>' />
                           <br />
                           Appr_LEVEL:
                           <asp:TextBox ID="Appr_LEVELTextBox" runat="server" Text='<%# Bind("Appr_LEVEL") %>' />
                           <br />
                           Description:
                           <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                           <br />
                           Backgd_Issue:
                           <asp:TextBox ID="Backgd_IssueTextBox" runat="server" Text='<%# Bind("Backgd_Issue") %>' />
                           <br />
                           Action_plan:
                           <asp:TextBox ID="Action_planTextBox" runat="server" Text='<%# Bind("Action_plan") %>' />
                           <br />
                           Mth:
                           <asp:TextBox ID="MthTextBox" runat="server" Text='<%# Bind("Mth") %>' />
                           <br />
                           PL_balance:
                           <asp:TextBox ID="PL_balanceTextBox" runat="server" Text='<%# Bind("PL_balance") %>' />
                           <br />
                           Upload_date:
                           <asp:TextBox ID="Upload_dateTextBox" runat="server" Text='<%# Bind("Upload_date") %>' />
                           <br />
                           Lock:
                           <asp:CheckBox ID="LockCheckBox" runat="server" Checked='<%# Bind("Lock") %>' />
                           <br />
                           Prepared:
                           <asp:TextBox ID="PreparedTextBox" runat="server" Text='<%# Bind("Prepared") %>' />
                           <br />
                           Reviewed:
                           <asp:TextBox ID="ReviewedTextBox" runat="server" Text='<%# Bind("Reviewed") %>' />
                           <br />
                           <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                           &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                       </EditItemTemplate>
                       <EmptyDataTemplate>
                           <p>
                               No Data.</p>
                       </EmptyDataTemplate>
                       <InsertItemTemplate>
                           Entity:
                           <asp:TextBox ID="EntityTextBox" runat="server" Text='<%# Bind("Entity") %>' />
                           <br />
                           GL_BATCH:
                           <asp:TextBox ID="GL_BATCHTextBox" runat="server" Text='<%# Bind("GL_BATCH") %>' />
                           <br />
                           Appr_LEVEL:
                           <asp:TextBox ID="Appr_LEVELTextBox" runat="server" Text='<%# Bind("Appr_LEVEL") %>' />
                           <br />
                           Description:
                           <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                           <br />
                           Backgd_Issue:
                           <asp:TextBox ID="Backgd_IssueTextBox" runat="server" Text='<%# Bind("Backgd_Issue") %>' />
                           <br />
                           Action_plan:
                           <asp:TextBox ID="Action_planTextBox" runat="server" Text='<%# Bind("Action_plan") %>' />
                           <br />
                           Mth:
                           <asp:TextBox ID="MthTextBox" runat="server" Text='<%# Bind("Mth") %>' />
                           <br />
                           PL_balance:
                           <asp:TextBox ID="PL_balanceTextBox" runat="server" Text='<%# Bind("PL_balance") %>' />
                           <br />
                           Upload_date:
                           <asp:TextBox ID="Upload_dateTextBox" runat="server" Text='<%# Bind("Upload_date") %>' />
                           <br />
                           Lock:
                           <asp:CheckBox ID="LockCheckBox" runat="server" Checked='<%# Bind("Lock") %>' />
                           <br />
                           Prepared:
                           <asp:TextBox ID="PreparedTextBox" runat="server" Text='<%# Bind("Prepared") %>' />
                           <br />
                           Reviewed:
                           <asp:TextBox ID="ReviewedTextBox" runat="server" Text='<%# Bind("Reviewed") %>' />
                           <br />
                           <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                           &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                       </InsertItemTemplate>
                       <ItemTemplate>
                           ID:
                           <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                           <br />
                           Entity:
                           <asp:Label ID="EntityLabel" runat="server" Text='<%# Bind("Entity") %>' />
                           <br />
                           GL_BATCH:
                           <asp:Label ID="GL_BATCHLabel" runat="server" Text='<%# Bind("GL_BATCH") %>' />
                           <br />
                           Appr_LEVEL:
                           <asp:Label ID="Appr_LEVELLabel" runat="server" Text='<%# Bind("Appr_LEVEL") %>' />
                           <br />
                           Description:
                           <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                           <br />
                           Backgd_Issue:
                           <asp:Label ID="Backgd_IssueLabel" runat="server" Text='<%# Bind("Backgd_Issue") %>' />
                           <br />
                           Action_plan:
                           <asp:Label ID="Action_planLabel" runat="server" Text='<%# Bind("Action_plan") %>' />
                           <br />
                           Mth:
                           <asp:Label ID="MthLabel" runat="server" Text='<%# Bind("Mth") %>' />
                           <br />
                           PL_balance:
                           <asp:Label ID="PL_balanceLabel" runat="server" Text='<%# Bind("PL_balance") %>' />
                           <br />
                           Upload_date:
                           <asp:Label ID="Upload_dateLabel" runat="server" Text='<%# Bind("Upload_date") %>' />
                           <br />
                           Lock:
                           <asp:CheckBox ID="LockCheckBox" runat="server" Checked='<%# Bind("Lock") %>' Enabled="false" />
                           <br />
                           Prepared:
                           <asp:Label ID="PreparedLabel" runat="server" Text='<%# Bind("Prepared") %>' />
                           <br />
                           Reviewed:
                           <asp:Label ID="ReviewedLabel" runat="server" Text='<%# Bind("Reviewed") %>' />
                           <br />
                       </ItemTemplate>
                   </asp:FormView>
               </ContentTemplate>
               <Triggers>
                   <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
               </Triggers>
           </asp:UpdatePanel>
       </div>  
            </div>
        <p>
       <asp:TextBox ID="TextBox1" Text="28" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NSTConnectionString %>"  SelectCommand="SELECT * FROM [adjrpt_detail]"  >
   </asp:SqlDataSource>
             </p>
    </form>
</body>
</html>
