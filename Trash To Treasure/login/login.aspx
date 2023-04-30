<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Trash_To_Treasure.login.login" %>

  <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../CSS/login.css">
 
</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <h1> Login </h1>
            </center>
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login"  OnClick="btnLogin_Click"/>
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btnCancel_Click" />
            <asp:Label CssClass="text-denger" ID="lblerror" Text="" runat="server" />
        </div>
    </form>
</body>
</html>
