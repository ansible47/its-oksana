<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="Content Page"%>

<asp:Content ID="header" ContentPlaceHolderID="header" Runat="Server">
        <div class="row">
                <img class="headerimg" src="images/menu.jpg" alt="head icon" />
        </div>
        <div class="row">
        <br />
             <img class="headsplash1" src="images/hometext1.jpg" alt="it's"/>
             <img class="headsplash2" src="images/hometext2.jpg" alt="oksana"/>
        <br />
        </div>
        <div class="popup">
            <div class="row splash1">
                <div id="email text" class="text"><a href="mailto:oksana@itsoksana.com">oksana@itsoksana.com</a></div>
            </div>
            <div class="row splash2">
                 <div id="phone" class="text"><a>773.387.6968</a></div>
                 <div id="contact"><a href="contact.aspx">(contact)</a></div>
            </div>
        </div>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
        <div class="row" style="">
           
           <div class="col span_5 nav1">
               <a href="draperies.aspx">
                <img class="splash1 navimg" src="images/menuimg1.jpg" alt="" style=""/>
                <img class="splash2 navtxt" src="images/drapariestext.jpg" alt="" style=""/>
               </a>
              <!--  <div class="rotate"  style="">draperies</div>-->
            </div>
            <div class="col span_6 nav2">
               <a href="lasercutting.aspx">
                <img class="splash3 navimg" src="images/menuimg2.jpg" alt=""  style=""/>
                <img class="splash4 navtxt" src="images/menutext2.jpg" alt="" style=""/>
               </a>
              <!--<div class="navtext rotate" style="">lazer cuttings</div>-->
            </div>
            <div class="col span_5 nav1">
                <a href="specialevents.aspx">
                 <img class="splash5 navimg" src="images/menuimg3.jpg" style="" alt=""/>
                 <img class="splash6 navtxt" src="images/menutext3.jpg" alt="" style=""/>
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
                    $(".headsplash1").delay(500).animate({ opacity: 1 }, 500);
                    $(".headsplash2").delay(500).animate({ opacity: 1 }, 500);
                    $(".splash1").delay(800).animate({ opacity: 1 }, 500);
                    $(".splash2").delay(900).animate({ opacity: 1 }, 500);
                    $(".splash3").delay(1000).animate({ opacity: 1 }, 500);
                    $(".splash4").delay(1100).animate({ opacity: 1 }, 500);
                    $(".splash5").delay(1200).animate({ opacity: 1 }, 500);
                    $(".splash6").delay(1300).animate({ opacity: 1 }, 500);

                });
    </script>
</asp:Content>