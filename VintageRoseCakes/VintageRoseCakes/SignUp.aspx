<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up</title>
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

                <div class="formS">
                        
                        <div class="row">

                            <div>
                                <label for="">Name:</label>
                            </div>

                            <div>
                                
                                <asp:TextBox ID="TextBoxName" runat="server" ></asp:TextBox>
                            </div>

                        </div>

                        <div class="row">

                            <div>
                                <label for="">Surname:</label>
                            </div>

                            <div>
                                
                                <asp:TextBox ID="TextBoxSurname" runat="server" ></asp:TextBox>
                            </div>

                        </div>
                        
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
                                
                                <asp:TextBox ID="TextBoxPassword" runat="server" ></asp:TextBox>
                            </div>

                        </div>  
                    
                        <div class="row">

                            <div>
                                <label for="">Phone Number:</label>
                            </div>

                            <div>
                                
                                <asp:TextBox ID="TextBoxPhoneNumber" runat="server"></asp:TextBox>
                            </div>

                        </div> 
                    
                        <div class="row">

                            <div>
                                <label for="">Address:</label>
                            </div>

                            <div>
                                <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
                            </div>

                        </div>
                    
                        <br />
                    
                        <div class="row">

                            <asp:Button ID="ButtonSignUp" runat="server" OnClick="Button2_Click" Text="Sign Up" />

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
