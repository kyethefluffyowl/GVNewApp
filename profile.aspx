<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<head runat="server">
    <title>Profile</title>
    <style>
        body {
            margin:0;
            font-family:'Century Gothic' ,'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        /* Style the tab */
        div.tab {
            overflow: hidden;
            background-color: white;
            height:3em;
            font-size:1.3em;
            font-variant:normal;
        }

        /*space tabs out evenly*/
        .tab > div {
            display: inline-block;
            display: -moz-inline-box;
            *display: inline; /* For IE7 */
            zoom: 1; /* Trigger hasLayout */
            margin-left: 8%;
            width: 25%; /*Control width of tabs*/
            text-align: center;
        }

        .tab > div:first-child {
            margin-left: 3%;
        }

        /* Style the buttons inside the tab */
        div.tab div {
            outline: none;
            cursor: pointer;
            padding: 1em 0 0 0;
            transition: 0.3s;
        }

        /* Change background color of buttons on hover */
        div.tab div:hover {
            background-color: unset;
        }

        /* Create an active/current tablink class */
        div.tab div.active {
            background-color: none;
            color: #FFA80D;
            border-bottom: 4px solid #FFA80D;
            transition: 0.2s;
        }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        } 


        /*QR Styling*//*QR Styling*//*QR Styling*//*QR Styling*//*QR Styling*//*QR Styling*//*QR Styling*//*QR Styling*/
        /* Style the Image Used to Trigger the Modal */
        #myImg {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #myImg:hover {opacity: 0.7;}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(255, 168, 13, 0.95); /* Black w/ opacity */
        }

        /* Modal Content (Image) */
        .modal-content {
            margin: auto;
            display: block;
            width: 50%;
            max-width: 700px;
        }

        /* Add Animation - Zoom in the Modal */
        .modal-content { 
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {-webkit-transform:scale(0)} 
            to {-webkit-transform:scale(1)}
        }

        @keyframes zoom {
            from {transform:scale(0)} 
            to {transform:scale(1)}
        }

        /* The Close Button */
        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 700px){
            .modal-content {
                width: 75%;
            }
        } 
        /*END QR STYLING*/

    </style>
</head>
<body onload="clickFirstTab();">
    <form id="form1" runat="server">
        <!--Top Header With background-->
        <div style="background-color:#FFA80D; height:20em;">
            <!--Top left/ right buttons-->
            <div style="/*border:1px solid black;*/ width:100%; height:2em; margin: 0 0 2em 0; display:block;">
                <a style="padding:1em;" href="default.aspx"><img src="images/back_arrow.png" style="width:1.2em; height:1em; vertical-align:-webkit-baseline-middle;"/></a>
            </div>

            <!--Middle Align Stuff-->
            <div style="width: 80%; margin: 0 auto; text-align:center; display:block;">
                <img src="images/profilePic.png" style="height:4em; width:4em;"/>
                <p style="font-size:1.2em; color: white; font-weight:bold; margin:0.2em;">Shizuha Kinjo</p>
                <!--Membership leftshifted mid-->
                <div>
                    <img src="images/membershipstar.png" style="height:1em; width:1em; display:inline-block; vertical-align:middle; "/>
                    <p style="font-size:0.8em; color: white; font-weight:lighter; display:inline-block; vertical-align:middle; padding-top:2px;">MEMBER FOR <em>3</em> YEARS</p>
                </div>
            </div>
        </div>

        <!--Tabs-->
        <div style="width:100%; margin: 0 auto; display:block;">
            
            <div class="tab">
                <div id="first" class="tablinks" onclick="openCity(event, 'booking')">Bookings</div><div class="tablinks" onclick="openCity(event, 'stats')">Statistics</div><div class="tablinks" onclick="openCity(event, 'settings')">Settings</div>
            </div>

            <div id="booking" class="tabcontent">
                <div style="z-index:100; border: 3px solid rgba(0, 0, 0, 0.00); background-color:gainsboro; border-radius:3em 3em 0 0; height: 1.5em;">
                    <p style="margin:0; color: #000; font-weight:bold; padding-left:1em;">Kingsman: The Golden Circle</p>
                </div>
                <div style="z-index:105; border: 3px solid rgba(0, 0, 0, 0.00); border-radius:0 0 2em 2em; height: 4em; box-shadow: 0.2em 0.2em 2em rgba(0, 0, 0, 0.31);">
                    <img id="myImg" src="images/qrPlaceHolder.png" style="padding-left:1em; width:4em; height:4em;"/>
                    <div id="myModal" class="modal">
                    <span class="close">&times;</span>
                    <img class="modal-content" id="img01"/>
                    </div> 
                </div>
            </div>
            
            <div id="stats" class="tabcontent">
              <h3>Statistics</h3>

            </div>

            <div id="settings" class="tabcontent">
              <h3>Settings</h3>
              
            </div> 
        </div>
            <script>
                function clickFirstTab() {
                    document.getElementById("first").click();
                    //alert('NO');
                }

                function openCity(evt, cityName) {
                    // Declare all variables
                    var i, tabcontent, tablinks;

                    // Get all elements with class="tabcontent" and hide them
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }

                    // Get all elements with class="tablinks" and remove the class "active"
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }

                    // Show the current tab, and add an "active" class to the button that opened the tab
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }

                // Get the modal
                var modal = document.getElementById('myModal');

                // Get the image and insert it inside the modal - use its "alt" text as a caption
                var img = document.getElementById('myImg');
                var modalImg = document.getElementById("img01");
                img.onclick = function () {
                    modal.style.display = "block";
                    modalImg.src = this.src;
                }

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                } 
    </script>
    </form>
</body>
</html>
