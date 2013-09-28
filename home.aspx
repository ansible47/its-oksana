<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="Content Page"%>

<asp:Content ID="header" ContentPlaceHolderID="header" Runat="Server">
    <div id="headcontent">
        <div class="row">
                <img class="headerimg" src="images/menu.jpg" alt="head icon" />
        </div>
        <div class="row">
        <br />
             <img class="headsplash1" src="images/hometext1.jpg" alt="it's"/>
             <img class="headsplash2" src="images/hometext2.jpg" alt="oksana"/>
           <!--  <div id="windowSize">this should change</div> -->
        <br />
        </div>
        <div class="popup">
            <div class="row splash1">
                <div id="contact" class="text"> <a href="contact.aspx">contact</a></div>
            </div>
        </div>
      </div>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
        <div class="row" id="bodycontent">
         <div class="col span_4" id="nav1">
               <a href="draperies.aspx" class="bounce">
                     <img class="splash1 navimg1" src="images/menuimg1.jpg" alt="" style=""/>
                     <img class="splash2 navtext" src="images/drapariestext.jpg" alt="" style=""/>
               </a>
              <!--  <div class="rotate"  style="">draperies</div>-->
            </div>
            <div class="col span_6" id="nav2">
               <a href="lasercutting.aspx" class="bounce">
                <img class="splash3 navimg2" src="images/menuimg2.jpg" alt=""  style=""/>
                <img class="splash4 navtext2" src="images/lasercuttingtext.jpg" alt="" style=""/>
               </a>
              <!--<div class="navtext rotate" style="">laser cuttings</div>-->
            </div>
            <div class="col span_4" id="nav3">
                <a href="specialevents.aspx" class="bounce">
                 <img class="splash5 navimg1" src="images/menuimg3.jpg" style="" alt=""/>
                 <img class="splash6 navtext3" src="images/specialeventstext.jpg" alt="" style=""/>
                 </a>
               <!--<div class="navtext rotate" style="">special events</div>-->
               </div>
           </div>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="footscript" Runat="Server" >
   <script language="javascript" type="text/javascript">
       $(document).ready(function () {
           $(".headsplash1").css("opacity", "0");
           $(".headsplash2").css("opacity", "0");
           $(".splash1").css("opacity", "0");
           $(".splash2").css("opacity", "0");
           $(".splash3").css("opacity", "0");
           $(".splash4").css("opacity", "0");
           $(".splash5").css("opacity", "0");
           $(".splash6").css("opacity", "0");
           $(".headsplash1").delay(200).animate({ opacity: 1 }, 500);
           $(".headsplash2").delay(400).animate({ opacity: 1 }, 500);
           $(".splash1").delay(600).animate({ opacity: 1 }, 500);
           $(".splash2").delay(800).animate({ opacity: 1 }, 500);
           $(".splash3").delay(1000).animate({ opacity: 1 }, 500);
           $(".splash4").delay(1200).animate({ opacity: 1 }, 500);
           $(".splash5").delay(1400).animate({ opacity: 1 }, 500);
           $(".splash6").delay(1600).animate({ opacity: 1 }, 500);

           var offset = window.innerHeight * .90 - $("#headcontent").height();

           if (window.innerWidth > 768 & window.innerHeight > 480) {
              // alert("If triggered! with offset " + offset + " " + window.innerHeight);
               $(".navimg1, .navimg2").css("height", offset + "px");

           }
           else {
              // alert("else triggered!");
               $(".navimg1").css("height", 380 + "px");
               $(".navimg2").css("height", 380 + "px");
           }

          //dev $("#windowSize").html(window.innerHeight + " - " + $("#headcontent").height() + " width: " + window.innerWidth);


           $(window).resize(function () {

               var offset = window.innerHeight * .90 - $("#headcontent").height();
              //dev $("#windowSize").html(window.innerHeight + " - " + $("#headcontent").height() + " width: " + window.innerWidth);

               if (window.innerWidth < 769) {
                   $(".navimg1, .navimg2").css("height", 380 + "px");
               }
               else {
                   $(".navimg1, .navimg2").css("height", offset + "px");
               }

           });

       });

    </script>
</asp:Content>