<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BlogApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

          <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CoderZone</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">View Post</a></li>
        <li><a href="#">Write Post</a></li>
        <li><a href="#">About Us</a></li>
      </ul>
    </div>
  </div>
</nav>

        <div id="pattern" class="pattern">
    <div class="col-group">
  		<div>
				<h2 > About Beautiful Bangladesh</h2>
				<p>আমার সোনার বাংলা,
আমি তোমায় ভালবাসি।
চিরদিন তোমার আকাশ,
তোমার বাতাস
আমার প্রাণে বাজায় বাঁশি।

ও মা,
ফাগুনে তোর আমের বনে
ঘ্রাণে পাগল করে
মরি হায়, হায় রে
ও মা,
অঘ্রানে তোর ভরা ক্ষেতে,
আমি কী দেখেছি মধুর হাসি।।

কী শোভা, কী ছায়া গো,
কী স্নেহ, কী মায়া গো,
কী আঁচল বিছায়েছ
বটের মূলে,
নদীর কূলে কূলে।

মা, তোর মুখের বাণী
আমার কানে লাগে
সুধার মতো-

মা তোর বদন খানি মলিন হলে
আমি নয়ন
ও মা আমি নয়ন জলে ভাসি
সোনার বাংলা,
আমি তোমায় ভালবাসি।</p>
			</div>
			<div>
                <h2>About Basis</h2>
				<p>Bangladesh Association of Software and Information Services (BASIS) is the national trade body for Software & IT Enabled Service industry of Bangladesh. Established in 1997, the association has been working with a vision of developing vibrant software & IT service industry in the country.
BASIS started its journey with only 17 charter members. Today the membership stands at more than 800. Members of BASIS account for the lion share of the total software & IT services revenue of the country.
BASIS, through its regular programs and activities, works on the following broad objectives.

    </p>
			</div>
		</div>
	</div>
    <div>

        <table border= "1"; style ="width:100%; background: blue">
            <tr>
                <td>

                </td>
                <td style ="text-align:center" >
                    <asp:Button ID="newButton" runat="server" Text="New Post" OnClick="newButton_Click" /> <br /> Click this to Write new Post. 
                </td>
            </tr>
        </table>
        <table border ="1" style ="background: blue; width:100%">
            <tr>
                <td>
                </td>
                <td style="text-align:center">
                    <asp:Button ID="viewPost" runat="server" Text="View Post" OnClick="viewPost_Click" /><br /> Click this to View Post.

                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
