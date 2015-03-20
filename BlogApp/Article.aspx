<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="BlogApp.Article" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title> Article Posting Page</title>
   <script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
<script>tinymce.init({ selector: 'textarea' });</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox>
                </td>

                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Content"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tinyTextBox" runat="server" TextMode="MultiLine" Rows="20" Columns="100"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox>

                </td>
                 </tr>

        </table>
        <br />
        <br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        <br />
        
        <br />
        <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>


    
    </div>
    </form>
</body>
</html>
