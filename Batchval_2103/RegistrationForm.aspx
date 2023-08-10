<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Batchval_2103.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container ">
       <form id="form1" runat="server">
       <div class="row col-5 m-auto">
            <h2  class="my-5">Users Details</h2>
        
            <label>First Name</label>
            <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvfirstname" CssClass="text-danger"  runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter first name.."  ValidationGroup="Batch11"></asp:RequiredFieldValidator>
                    

            <label>Last Name</label>
            <asp:TextBox ID="txtlastnamme" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvlastnamme" CssClass="text-danger"  runat="server" ControlToValidate="txtlastnamme" ErrorMessage="Enter last name..."  ValidationGroup="Batch11" ></asp:RequiredFieldValidator>
                    

            <label>Roll No.</label>
            <asp:TextBox ID="txtRollnumber" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRollnumber" CssClass="text-danger"  runat="server" ControlToValidate="txtRollnumber" ErrorMessage="Enter Roll Number..."  ValidationGroup="Batch11" ></asp:RequiredFieldValidator>
                    

            <label>Class Name</label>
            <asp:TextBox ID="txtClassname" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvClassname" CssClass="text-danger"  runat="server" ControlToValidate="txtClassname" ErrorMessage="Enter Class Name" ValidationGroup="Batch11" ></asp:RequiredFieldValidator>
                    

            <label>Percentage</label>
            <asp:TextBox ID="txtpercentage" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvpercentage" runat="server" CssClass="text-danger"  ControlToValidate="txtpercentage" ErrorMessage="Enter Percentage" ValidationGroup="Batch11" ></asp:RequiredFieldValidator>
              
            <asp:Button ID="btninsert" CssClass="btn btn-primary col-2 offset-10" runat="server" Text="Submit"  ValidationGroup="Batch11" OnClick="btninsert_Click" CausesValidation="true"  />
            
            <asp:ValidationSummary ID="vs" runat="server"  ValidationGroup="Batch11" ShowMessageBox="false" ShowSummary="false" />
        </div>
    </form>
    </div>
</body>
</html>
