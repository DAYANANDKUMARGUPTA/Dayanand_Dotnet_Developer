<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Batchval_2103.List" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
  <div class="container">
       <h1 align="center">DuckTale Machine test</h1>
       <a href="RegistrationForm.aspx" class="btn btn-danger rounded-0 my-3 offset-10" >Add Users</a>
  <form id="form2" runat="server" class="row">
        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" Width="100%" BorderStyle="None" BorderWidth="0">
    <Columns>  
        <asp:TemplateField HeaderText="S.N.">
            <ItemTemplate>
                <%#Eval("id") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="First Name" >
            <ItemTemplate>
                <%#Eval("firstname")%>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Last Name" >
            <ItemTemplate>
                <%#Eval("lastnamme") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Roll Number" >
            <ItemTemplate>
                <%#Eval("Rollnumber") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Class Name" >
            <ItemTemplate>
                <%#Eval("Classname") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Percentage" >
            <ItemTemplate>
                <%#Eval("percentage") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView> 
  </form>
  </div>
</body>
</html>
