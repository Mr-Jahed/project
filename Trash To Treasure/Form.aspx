<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Trash_To_Treasure.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donation Form</title>
    <link rel="stylesheet" href="../CSS/Form.css">
</head>
<body>
    
    <form id="form1" runat="server">  
        <div class="boxx"> 
            
            <h1>Donate Waste</h1>

            <table class="auto-style1">  
                
                <tr>  
                    <td>Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
              
                <tr>  
                    <td>Phone :</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>
                
                <tr>  
                    <td>Email :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>  
                    </td>  
                </tr>
                
                <tr>  
                    <td>City :</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Pune" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Mumbai" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>
                
                <tr>  
                    <td>Address Type :</td>  
                    <td>  
                       <asp:DropDownList ID="DropDownList2" runat="server">  
                            <asp:ListItem Text="Address Type" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Home" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Office" Value="Mysore"></asp:ListItem>  
                       
                        </asp:DropDownList>  
                    </td>  
               </tr>
                
                <tr>  
                    <td>Address :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>
                
                   <tr>  
                    <td>Trash Type :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                    </td>  
                </tr>
                
                   <tr>  
                    <td>Trash Information :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
                    </td>  
                </tr>
                
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="button_click"/>  
                    </td>  
                </tr>  
            </table>  
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>  
    </form>  


</body>
</html>
