<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="It's Oksana Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
 
        <a href="home.aspx">
                 
            
        <div class="row col span_16">
           <img class="homeimage" src="images/homepagephotograph.jpg" alt="home image"/>
        </div>
        </a>
        <div class="row col span_16">
                <img class="defsplash1" src="images/hometext1.jpg" alt="it's"/>
                <img class="defsplash2" src="images/hometext2.jpg" alt="oksana"/>
        </div>
</asp:Content>
<asp:Content ID="footer" ContentPlaceHolderID="footer" Runat="Server">
       <div id="foot">all images & content &copy; 2013 It's Oksana</div>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="footscript" Runat="Server" >
        <script language="javascript" type="text/javascript">
            $(document).ready(function () {
                $(".defsplash1").css("opacity", "0");
                $(".defsplash2").css("opacity", "0");
                $(".defsplash1").delay(500).animate({ opacity: 1 }, 200);
                $(".defsplash2").delay(1000).animate({ opacity: 1 }, 200);
            });
    </script>
</asp:Content>