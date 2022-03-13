<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vintage Rose Cakes</title>
    <link href="/style.css" rel="stylesheet" />
    
    <style>

        .modalTop {
            font-family: Constantia;
            opacity: 0;
            visibility: hidden;
            position: absolute;
            top: 150%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
            height: 350px;
            background: white;
            border-radius: 5px;
            transition: .3s ease-in;
            box-shadow: 0 2px 12px 0 rgba(0,0,0,.4);
        }

        .modalBottom {
            font-family: Constantia;
            opacity: 0;
            visibility: hidden;
            position: absolute;
            top: 250%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
            height: 350px;
            background: white;
            border-radius: 5px;
            transition: .3s ease-in;
            box-shadow: 0 2px 12px 0 rgba(0,0,0,.4);
        }

        #clickTop:checked ~ .modalTop {
            opacity: 1;
            visibility: visible;
        }

        #clickBottom:checked ~ .modalBottom {
            opacity: 1;
            visibility: visible;
        }

        .header {
            height:50px;
            background: #cdf4dd;
            overflow: hidden;
            border-radius: 5px 5px 0 0;
        }

        p {
            padding-top: 30px;
            font-size: 19px;
            text-align: center;
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

        #clickTop {
            display: none;
        }

        #clickBottom {
            display: none;
        }

        .select {
            display: block;
            width: 80px;
            height: 38px;
            margin: 10px;
            background: #27ae60;
            border: 1px solid #26a65b;
            color: white;
            text-align: center;
            font-size: 16px;
            line-height: 38px;
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



            <div class="banner">              
                Perfect cakes for your perfect wedding!
            </div>

            <main>

                <h2>Choose your wedding cake according to the wedding concept!</h2>

                <div class="content">
                
                    <img src="images/vintage.jpg" alt="" class="img"/>

                    <h3>Vintage Concept</h3>

                    <p class="contentText">Vintage wedding concepts are one of the most preferred 
                        wedding themes in recent years by couples who want to travel in time and 
                        yearn for the past years. You can use lace tablecloths, old dinnerware, 
                        crystal chandeliers and old candlesticks in your decorations. For vintage 
                        wedding concept materials, you can visit the antique shops in your city and
                        expand your decoration with antique items.</p>

                    <input type="checkbox" id="clickTop" />
                        <label for="clickTop" class="select">Select</label>
                        <div class="modalTop">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
                        </div>

                </div>

                <div class="content">
                
                    <img src="images/bohem.jpg" alt="" class="img"/>

                    <h3>Bohemian Concept</h3>

                    <p class="contentText">The theme that free-spirited couples who love to live in the
                        moment feel happiest is undoubtedly the bohemian wedding concept. Usually pastel 
                        tones; light yellow, lavender, orange, light blue and powder tones are preferred.
                        Worn books and postcards, tiny scented candles, dried scented flowers and aged colorful
                        chairs can be used.</p>

                    <input type="checkbox" id="clickTop" />
                        <label for="clickTop" class="select">Select</label>
                        <div class="modalTop">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
                        </div>

                </div>

                <div class="content">
                
                    <img src="images/rustik.jpg" alt="" class="img"/>

                    <h3>Rustic Concept</h3>

                    <p class="contentText">The rustic wedding concept is a simple wedding concept 
                        that has been used a lot in recent years. The purpose of this concept is the 
                        absence of artificial objects and unnatural objects in the wedding area. It 
                        consists mostly of wood and plants. The chairs and tables, the decorations, 
                        most of the surroundings must be made of wood. Dried flower details can also
                        be added on the tables.</p>

                    <input type="checkbox" id="clickTop" />
                        <label for="clickTop" class="select">Select</label>
                        <div class="modalTop">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
                        </div>

                </div>

                <div class="content">
                
                    <img src="images/sahil.jpg" alt="" class="img"/>

                    <h3>Beach Concept</h3>

                    <p class="contentText">For couples who love the sea and nature, perhaps the most 
                        popular is the beach wedding concept. The most commonly used color in the wedding
                        theme, which has many different decoration options, is of course blue and its tones.
                        You can use all-size starfish and anchors, ship rudders in your decoration. You can 
                        also use fish, starfish and pearls in your invitations.</p>

                    <input type="checkbox" id="clickBottom" />
                        <label for="clickBottom" class="select">Select</label>
                        <div class="modalBottom">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
                        </div>

                </div>

                <div class="content">
                
                    <img src="images/sonbahar.jpg" alt="" class="img"/>

                    <h3>Autumn Concept</h3>

                    <p class="contentText">Would you like to take the fallen leaves, the perfect symbol of
                        the autumn month, and carry them to your wedding? With the details you add from yourself,
                        you can actually feel the romantic breezes of autumn on your wedding day. Of course,
                        the colors of your decoration will be orange, brick color, burgundy, dark green, mustard
                        yellow, dry rose and similar tones.</p>

                    <input type="checkbox" id="clickBottom" />
                        <label for="clickBottom" class="select">Select</label>
                        <div class="modalBottom">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
                        </div>

                </div>

                <div class="content">
                
                    <img src="images/kış.jpg" alt="" class="img"/>

                    <h3>Winter Concept</h3>

                    <p class="contentText">If you want to have a different and stylish wedding in the winter season
                        dominated by white, the winter concept is for you. Decorations using dark colors such as 
                        burgundy, emerald green and gold details in winter weddings are quite impressive. You can 
                        choose an ornament that reflects the winter spirit by using dry branches, cones and pine leaves
                        as well as classic flowers as the centerpiece of the table.</p>

                    <input type="checkbox" id="clickBottom" />
                        <label for="clickBottom" class="select">Select</label>
                        <div class="modalBottom">
                            <div class="header">
                                <h2>Warning!</h2>
                                
                            </div>

                            <p>Please login to continue.</p>

                            <div class="line">
                            </div>
                            
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
