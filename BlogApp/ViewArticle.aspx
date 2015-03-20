<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewArticle.aspx.cs" Inherits="BlogApp.ViewArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor =" yellow">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                
                <td>
                     <asp:Label ID="Label1" runat="server" BackColor="Lime" BorderColor="#3366CC" Text="The............................Article............................List"></asp:Label>
                </td> 
                
                <td>
                    
                </td>
            </tr>
            
            <tr>
                <td>
                      <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" DataTextField="title" DataValueField="title" Height="545px" Width="960px" ></asp:GridView> 
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                </td>
            </tr>
        </table>
    
       
    
    </div>
      
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(local)\sqlexpress;Initial Catalog=blog_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [title] FROM [t_article] ORDER BY [title]"></asp:SqlDataSource>
      
           
      </form>
</body>
</html>
