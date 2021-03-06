﻿<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="Special Events" AutoEventWireup="true" Inherits="specialevents" CodeFile="~/specialevents.aspx.cs" %>

<asp:Content ID="head" ContentPlaceHolderID="head" Runat="Server">
    
    <link rel="stylesheet" href="css/lightbox.css" media="all" />
    <script type="text/javascript" src="scripts/lightbox-2.6.min.js" ></script>
    

</asp:Content>

<asp:Content ID="header" ContentPlaceHolderID="header" Runat="Server">
        <div class="row splash1">
          
            <div class="popup">
                <div id="title" class="text"><a href="home.aspx">special events</a></div>
                 <div id="homepopup"><a href="home.aspx">(home)</a></div>
                 </div>
        </div>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
    <div class="row span_16">
        <div id="gallery"> </div>
    </div>
    <div class="row">
            <a href="home.aspx">
                <img class="headerimg" src="images/menu.jpg" alt="head icon" />
            </a>
        </div>
        <div class="row">
        <br />
          <a href="home.aspx">
             <img class="headsplash1" src="images/hometext1.jpg" alt="it's"/>
             <img class="headsplash2" src="images/hometext2.jpg" alt="oksana"/>
          </a>
        <br />
        </div>

            <div class="row splash2">
                 <div id="contact"><a href="contact.aspx">contact</a></div>
            </div>
</asp:Content>


<asp:Content ID="footer" ContentPlaceHolderID="footer" Runat="Server">
       <div id="foot">all images & content &copy; 2013 It's Oksana</div>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="footscript" Runat="Server" >
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".headsplash1").css("opacity", "0");
            $(".headsplash2").css("opacity", "0");
            $(".headsplash1").delay(500).animate({ opacity: 1 }, 500);
            $(".headsplash2").delay(1000).animate({ opacity: 1 }, 500);
        });
    </script>
</asp:Content>