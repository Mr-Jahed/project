<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Trash_To_Treasure.login.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>
     <link rel="stylesheet" href="../CSS/admin.css">
</head>
<body>

    <asp:button CSSClass="btn btn-primary btn-sm"><a href="../Index.aspx"><i class="fa fa-sign-out"></i>Home</a></asp:button>
     
     <div class="heading">
            <h1>List of Customers</h1>
     </div>

      <div class="tab">
        <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>City</th>
                <th>Address Type</th>
                <th>Address</th>
                <th>Trash Type</th>
                <th>City Info</th>
            </tr>
        </thead>
        <tbody>
            <%=TableBind()%>
        </tbody>

    </table>
   </div>
        
</body>
</html>
