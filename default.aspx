<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<head runat="server">
    <title>GV Prototype App</title>
    <style>
        body {
            margin:0;
            background-color:#2b2b2b;
            font-family:'Century Gothic' ,'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .fontStyle {
            font-family:'Century Gothic' ,'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        /* The side navigation menu */
        .sidenav {
            height: 100%; /* 100% Full-height */
            width: 0; /* 0 width - change this with JavaScript */
            position: fixed; /* Stay in place */
            z-index: 1; /* Stay on top */
            top: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.90);
            overflow-x: hidden; /* Disable horizontal scroll */
            padding-top: 60px; 
            transition: 0.3s; /* transition effect to slide in the sidenav */
        }

        /* The navigation menu links */
        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 1.5em;
            font-family:'Century Gothic';
            color: #818181;
            display: block;
            transition: 0.3s
        }

        /* When you mouse over the navigation links, change their color */
        .sidenav a:hover, .offcanvas a:focus{
            color: #f1f1f1;
        }

        /* Position and style the close button (top right corner) */
        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }

        /*Profile Chip in side nav*/
        .chip {
            display: inline-block;
            padding: 0 25px;
            height: 50px;
            font-size: 16px;
            line-height: 50px;
            border-radius: 25px;
            background-color: #FFA80D;
        }

        .chip img {
            float: left;
            margin: 0 10px 0 -25px;
            height: 50px;
            width: 50px;
            border-radius: 50%;
        } 

        /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        } 

        .header {
            height: 5em;      /* equals max image height */
            width: 100%;
            white-space: nowrap; /* required unless you put the helper span closely near the img */
            background-color: #ffd700;
            text-align: left;
            z-index:100;
        }

        .helper {
            display: inline-block;
            height: 100%;
            vertical-align: middle;
        }

        #hamburger {
            vertical-align: middle;
            position:relative;
            left: 1em;
        }

        #logo {
            vertical-align: middle;
            display:block;
            width: 15em;
            margin: 0 auto;
            position:relative;
            top: -4em;
            padding: 0 2em 0 3em;
        }

        #blur {
            filter: blur(20px);
            -webkit-filter: blur(20px);
            margin: -2em -5em -2em -2em;
            width:100%;
            height:100%;
        }

        .quickBuyDD {
            font-size:1em;
            width: 20em;
            padding: 0.3em;
            border:2px solid white;
            background: #2b2b2b;
            -webkit-appearance: none;
            color:white;
            background-color: black;
            display:block;
            height:2em;
        }
        /*Horizontal Menu at the bottom*/
        div.scrollmenu {
            background-color: #333;
            overflow: auto;
            white-space: nowrap;
            display:block;
        }
        /*Horizontal links at the bottom*/
        div.scrollmenu a {
            display: inline-block;
            color: white;
            font-family:'Century Gothic';
            font-size:0.6em;
            text-align: center;
            padding: 1.2em;
            text-decoration: none;
        }
        /*Horizontal menu hover color change*/
        div.scrollmenu a:active {
            background-color: #ffd700;
            transition:0.2s;
            color:#2b2b2b;
        } 

    </style>
</head>
<body>
    <!--SideNav-->
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="profile.aspx"> <!--Profile Chip-->
            <div class="chip">
                <img src="images/profilePic.png" width="96" height="96"/>
                Shizuha Kinjo
            </div> 
        </a>
        <a href="#">eCard</a>
        <a href="#">My Bookings</a>
        <a href="#">DBS - GV iCard</a>
    </div>
    <!--Optional Background blur-->
    <%--<div style="display:inline-block; overflow:hidden; width:100%; height:30em; position:absolute; z-index:-20;" >
        <div id="blur" style="background-image:url(images/bgblur.jpg); background-size:cover;"></div>
    </div>--%>

    <form id="form1" runat="server" >
        <!--Header-->
        <div onclick="openNav();" class="header">
            <span class="helper"></span><img id="hamburger" src="images/hamburgerMenu.png" height="35" />
            <span class="helper"></span><img id="logo" src="images/gvlogo.png" height="50" />
        </div>
        <!--Quick Buy Div-->
        <div style="text-align:center;">
            <h2 style="color:white; font-family:'Century Gothic' ,'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">────<em style="color:#ffd700; font-style:normal;">&nbsp;QUICK BUY&nbsp;</em>────</h2>
        </div>
        <!--User Form-->
        <div style="text-align:center; width:20em; margin-left:auto; margin-right:auto;">
            <div class="fontStyle" style="width:100%; display:block; text-align:left; margin-bottom:1em;"><!--Movie Title-->
                <p style="margin:0; padding:0; font-family:'Century Gothic'; color:#ffd700; font-size:0.8em; display:block;">MOVIE TITLE</p>
                <asp:DropDownList runat="server" CssClass="quickBuyDD">
                    <asp:listitem>&nbsp;</asp:listitem>
                    <asp:ListItem>The Foreigner</asp:ListItem>
                    <asp:ListItem>Kingsman The Golden Circle</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="fontStyle" style="width:100%; display:block; text-align:left; margin-bottom:1em;"><!--Location-->
                <p style="margin:0; padding:0; font-family:'Century Gothic'; color:#ffd700; font-size:0.8em; display:block;">LOCATION</p>
                <asp:DropDownList runat="server" CssClass="quickBuyDD">
                    <asp:listitem>&nbsp;</asp:listitem>
                    <asp:ListItem>Jurong Point</asp:ListItem>
                    <asp:ListItem>Peya Lebar</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="fontStyle" style="width:100%; display:block; text-align:left; margin-bottom:1em;"><!--Showtimes-->
                <p style="margin:0; padding:0; font-family:'Century Gothic'; color:#ffd700; font-size:0.8em; display:block;">SHOWTIMES</p>
                <asp:DropDownList runat="server" CssClass="quickBuyDD">
                    <asp:listitem>&nbsp;</asp:listitem>
                    <asp:ListItem>1420</asp:ListItem>
                    <asp:ListItem>1630</asp:ListItem>
                    <asp:ListItem>2130</asp:ListItem>
                    <asp:ListItem>0030</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <!--Welcome Back User-->
        <div style="background-color:#ffd700; width:100%; height:auto;">
            <h2 class="fontStyle" style="font-weight:normal; padding: 0.5em; margin:0;">Welcome, <em style="font-weight:bold">User</em>.</h2>
            <h5 class="fontStyle" style="font-weight:normal; padding: 0 0 1em 1em; margin:0;">You have no current bookings.</h5>
        </div>
        <!--Horizontal Scroll Bar-->
        <div style="position:fixed; left:0; bottom:0; width:100%;">
            <div class="scrollmenu">
                <a href="#nowshowing" class="fontStyle">NOW SHOWING
                    <div style="height:8em; width:8em; border-radius:4em; background-color:#ffd700; margin-top:1em;"></div>
                </a>
                <a href="#cinemas" class="fontStyle">CINEMAS
                    <div style="height:8em; width:8em; border-radius:4em; background-color:#ffd700; margin-top:1em;"></div>
                </a>
                <a href="#membership" class="fontStyle">MEMBERSHIP
                    <div style="height:8em; width:8em; border-radius:4em; background-color:#ffd700; margin-top:1em;"></div>
                </a>
                <a href="#promotions"class="fontStyle">PROMOTIONS
                    <div style="height:8em; width:8em; border-radius:4em; background-color:#ffd700; margin-top:1em;"></div>
                </a>
                <a href="#comingsoon" class="fontStyle">COMING SOON
                    <div style="height:8em; width:8em; border-radius:4em; background-color:#ffd700; margin-top:1em;"></div>
                </a>
            </div> 
        </div>
        

        <script>
            /* Set the width of the side navigation to 250px */
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
            }

            /* Set the width of the side navigation to 0 */
            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            } 
        </script>
    </form>
</body>
</html>
