<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="It's Oksana Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
 
        <div class="row col span_16">
           <a href="home.aspx">
            <img class="homeimage" src="images/homepagephotograph.jpg" alt="home image"/>
            </a>
        </div>
    <a href="home.aspx">
        <img class="defsplash1 row" src="images/hometext1.jpg" alt="it's"/>
        <img class="defsplash2 row" src="images/hometext2.jpg" alt="oksana"/>
    </a>
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