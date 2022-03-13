<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rustic.aspx.cs" Inherits="Rustic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Rustic Concept</title>
    <link href="/style.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>

        .modal {
            font-family: Constantia;
            opacity: 0;
            visibility: hidden;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 600px;
            height: 500px;
            background: white;
            border-radius: 5px;
            transition: .3s ease-in;
            box-shadow: 0 2px 12px 0 rgba(0,0,0,.4);
        }

        #click:checked ~ .modal {
            opacity: 1;
            visibility: visible;
        }

        .header {
            height:50px;
            background: #cdf4dd;
            overflow: hidden;
            border-radius: 5px 5px 0 0;
        }

        .fa-times {
            position: absolute;
            right: 20px;
            top: 20px;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
        }

        .line {
            position: absolute;
            bottom: 60px;
            width: 100%;
            height: 1px;
            background: silver;
        }

        .order-btn {
            position: absolute;
            bottom: 12px;
            right: 25px;
            border: 1px solid #27ae60;
            border-radius: 5px;
            color: #27ae60;
            padding: 8px 10px;
            font-size: 18px;
            cursor: pointer;
        }

        .order-btn:hover {
            background: #27ae60;
            color: white;
            transition: .4s;
        }

        #click {
            display: none;
        }

        .select {
            display: block;
            width: 130px;
            height: 40px;
            background: #27ae60;
            border: 1px solid #26a65b;
            color: white;
            text-align: center;
            font-size: 22px;
            line-height: 40px;
            border-radius: 10px;
            cursor: pointer;
            transition: .4s;
        }

        .select:hover {
            background: #219150;
        }

    </style>
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

                <div class="content">
                
                    <img src="cakes/rustik1.jpg" alt="" class="cake"/>                    
                    
                        <input type="checkbox" id="click" />
                        <label for="click" class="select">Select</label>
                        <div class="modal">
                            <div class="header">
                                <h2>Make your choice</h2>
                                <label for="click" class="fas fa-times"></label>
                            </div>

                          
                            <div>
                                <label>Flavor:</label>
                                <asp:DropDownList ID="Flavor1" class="drop" runat="server">
                                    <asp:ListItem>Chocolate</asp:ListItem>
                                    <asp:ListItem>Strawberry</asp:ListItem>
                                    <asp:ListItem>White Chocolate</asp:ListItem>
                                    <asp:ListItem>Banana</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Number of People:</label>
                                <asp:DropDownList ID="People1" class="drop" runat="server">
                                    <asp:ListItem>100 - 500tl</asp:ListItem>
                                    <asp:ListItem>250 - 1000tl</asp:ListItem>
                                    <asp:ListItem>500 - 2000tl</asp:ListItem>
                                    <asp:ListItem>1000 - 4000tl</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Address:</label>
                                <asp:TextBox ID="Address1" runat="server" ></asp:TextBox>
                            </div><br />

                            <div>
                                <label>Date:</label>
                                <asp:TextBox ID="Date1" runat="server" placeholder="day/month/year"></asp:TextBox>
                            </div><br />


                            <div>
                                <label>Time:</label>
                                <asp:DropDownList ID="Time1" class="drop" runat="server">
                                    <asp:ListItem>10:00-14:00</asp:ListItem>
                                    <asp:ListItem>15:00-19:00</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Payment:</label>
                                <asp:DropDownList ID="Payment1" class="drop" runat="server">
                                    <asp:ListItem>Cash</asp:ListItem>
                                    <asp:ListItem>Credit Card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          


                            <div class="line">
                            </div>
                            <asp:Button ID="ButtonOrder1" CssClass="order-btn" runat="server" OnClick="Button1_Click" Text="ORDER" />
                        </div>
                    
                </div>

                <div class="content">
                
                    <img src="cakes/rustik2.jpg" alt="" class="cake"/>                    
                    
                        <input type="checkbox" id="click" />
                        <label for="click" class="select">Select</label>
                        <div class="modal">
                            <div class="header">
                                <h2>Make your choice</h2>
                                <label for="click" class="fas fa-times"></label>
                            </div>

                          
                            <div>
                                <label>Flavor:</label>
                                <asp:DropDownList ID="Flavor2" class="drop" runat="server">
                                    <asp:ListItem>Chocolate</asp:ListItem>
                                    <asp:ListItem>Strawberry</asp:ListItem>
                                    <asp:ListItem>White Chocolate</asp:ListItem>
                                    <asp:ListItem>Banana</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Number of People:</label>
                                <asp:DropDownList ID="People2" class="drop" runat="server">
                                    <asp:ListItem>100 - 500tl</asp:ListItem>
                                    <asp:ListItem>250 - 1000tl</asp:ListItem>
                                    <asp:ListItem>500 - 2000tl</asp:ListItem>
                                    <asp:ListItem>1000 - 4000tl</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Address:</label>
                                <asp:TextBox ID="Address2" runat="server" ></asp:TextBox>
                            </div><br />

                            <div>
                                <label>Date:</label>
                                <asp:TextBox ID="Date2" runat="server" placeholder="day/month/year"></asp:TextBox>
                            </div><br />


                            <div>
                                <label>Time:</label>
                                <asp:DropDownList ID="Time2" class="drop" runat="server">
                                    <asp:ListItem>10:00-14:00</asp:ListItem>
                                    <asp:ListItem>15:00-19:00</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Payment:</label>
                                <asp:DropDownList ID="Payment2" class="drop" runat="server">
                                    <asp:ListItem>Cash</asp:ListItem>
                                    <asp:ListItem>Credit Card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          


                            <div class="line">
                            </div>
                            <asp:Button ID="ButtonOrder2" CssClass="order-btn" runat="server" OnClick="Button2_Click" Text="ORDER" />
                        </div>
                    
                </div>

                <div class="content">
                
                    <img src="cakes/rustik3.jpg" alt="" class="cake"/>                    
                    
                        <input type="checkbox" id="click" />
                        <label for="click" class="select">Select</label>
                        <div class="modal">
                            <div class="header">
                                <h2>Make your choice</h2>
                                <label for="click" class="fas fa-times"></label>
                            </div>

                          
                            <div>
                                <label>Flavor:</label>
                                <asp:DropDownList ID="Flavor3" class="drop" runat="server">
                                    <asp:ListItem>Chocolate</asp:ListItem>
                                    <asp:ListItem>Strawberry</asp:ListItem>
                                    <asp:ListItem>White Chocolate</asp:ListItem>
                                    <asp:ListItem>Banana</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Number of People:</label>
                                <asp:DropDownList ID="People3" class="drop" runat="server">
                                    <asp:ListItem>100 - 500tl</asp:ListItem>
                                    <asp:ListItem>250 - 1000tl</asp:ListItem>
                                    <asp:ListItem>500 - 2000tl</asp:ListItem>
                                    <asp:ListItem>1000 - 4000tl</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Address:</label>
                                <asp:TextBox ID="Address3" runat="server" ></asp:TextBox>
                            </div><br />

                            <div>
                                <label>Date:</label>
                                <asp:TextBox ID="Date3" runat="server" placeholder="day/month/year"></asp:TextBox>
                            </div><br />


                            <div>
                                <label>Time:</label>
                                <asp:DropDownList ID="Time3" class="drop" runat="server">
                                    <asp:ListItem>10:00-14:00</asp:ListItem>
                                    <asp:ListItem>15:00-19:00</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />

                            <div>
                                <label>Payment:</label>
                                <asp:DropDownList ID="Payment3" class="drop" runat="server">
                                    <asp:ListItem>Cash</asp:ListItem>
                                    <asp:ListItem>Credit Card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          


                            <div class="line">
                            </div>
                            <asp:Button ID="ButtonOrder3" CssClass="order-btn" runat="server" OnClick="Button3_Click" Text="ORDER" />
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