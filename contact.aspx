<%@ Page Language="C#" MasterPageFile="~/Layout.master" Title="Content Page"%>

<asp:Content ID="header" ContentPlaceHolderID="header" Runat="Server">
    <div id="headcontent">



      </div>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
            <div class="row splash2" >
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
                    <br />
                <div id="biopic" style="width:100%;">
                     <img src="images/oksana.jpg" alt="Oksana Picture" />
                </div>

                <div class="popup">
                    <div class="row splash1">
                        <div id="email" class="text"><a href="mailto:oksana@itsoksana.com">oksana@itsoksana.com</a></div>
                    </div>
                    <br />
                    <div class="row splash1">
                        <div id="email" class="text"><a href="http://www.itsoksana.blogspot.com">itsoksana.blogspot.com</a></div>
                    </div>
                    <div class="row splash2">
                    <br />
                         <div id="phone" class="text"><a>773.387.6968</a></div>
                         <br /> <Br />
                        <div id="phone" class="text"> 1821 West Hubbard Studio 308 <br /> Chicago IL 60622 </div>

                    </div>

                </div>
                
                <div id="bio" class="text"> 
                <br />
                    Bio:<br /><br />
                    
                    Oksana was born in the Ukraine, where she studied Art and Music. Her career began as a ceramic and porcelain designer. <br /><br />

                    She was invited to bring her porcelain Christmas ornament collection to New York in 1997. Once in the United States, she began working with interior designers utilizing soft furnishings.. This rekindled her old love for sewing and textiles. <br /><br />

                    Arriving in Chicago, she built up a number of clients through word-of-mouth recommendations alone. Soon, she was sought out by a number of interior designers for her innovative style and techniques. <br /><br />

                    After completing a course in Laser Cutting Techniques in London, she decided to bring this innovative technique to her work. Original designs as well as custom designs are now available and challenge the status quo of soft furnishings. <br /><br />
                </div>
            </div>
            </asp:Content>



            <asp:Content ID="footer" ContentPlaceHolderID="footer" Runat="Server">
       <div id="foot">all images & content &copy; 2013 It's Oksana</div>
</asp:Content>