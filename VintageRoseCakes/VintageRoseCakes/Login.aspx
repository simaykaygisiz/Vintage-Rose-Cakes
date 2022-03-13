<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">

            <header>

                <div class="logo">                 
                </div>

                <nav>
                    <ul>
                        <li>
                            <a href="Default.aspx">Homepage</a>
                        </li>
                        <li>
                            <a href="AboutUs.aspx">About Us</a>
                        </li>
                        <li>
                            <a href="Contact.aspx">Contact</a>
                        </li>
                        <li>
                            <a href="Login.aspx">Login</a>
                        </li>
                        <li>
                            <a href="SignUp.aspx">Sign Up</a>
                        </li>
                    </ul>
                </nav>
          
            </header>

            <main>

                <div class="formL">
                        
                        <div class="row">

                            <div>
                                <label for="">E-mail:</label>
                            </div>

                            <div>
                                
                                <asp:TextBox ID="TextBoxEmail" runat="server" ></asp:TextBox>
                            </div>

                        </div>

                        <div class="row">

                            <div>
                                <label for="">Password:</label>
                            </div>

                            <div>
                                
                                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" ></asp:TextBox>
                            </div>

                        </div>   
                    
                    <br />
                    
                        <div class="row">

                            
                            <asp:Button ID="ButtonLogin" runat="server" OnClick="Button1_Click" Text="Login" />

                            

                        </div>

                </div>

            </main>

            <footer>
                smykygsz &copy; | 2021
            </footer>

            </div>
    </form>
</body>
</html>
