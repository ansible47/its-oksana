function testfunc(input) {
    alert(input + "This is from javascript, bitch!");

}

function showImagesLightbox(input, dest) {
    var pics = input.split(",");

      dest = "#" + dest.toString()

      var output = "";

      var picsPerRow = 3;




      for (var x = 0; x < pics.length - 1; x++) {
          if ((x)%picsPerRow == 0) {
              //alpha (for no border)
              output += "<a href='images/draperies/" + pics[x].toString() + "' data-lightbox='draperies' Title='Picture "+(x+1).toString()+"'>";
              output += "<img src='images/draperies/" + pics[x].toString() + "' class='gallery-img alpha galsplash"+ x +"' alt='img_" + (x + 1).toString() + "' />";
              output += "</a>";
          }
          else {
              output += "<a href='images/draperies/" + pics[x].toString() + "' data-lightbox='draperies' Title='Picture " + x.toString() + "'>";
              output += "<img src='images/draperies/" + pics[x].toString() + "' class='gallery-img galsplash" + x + "' alt='img_" + x.toString() + "' />";
              output += "</a>";
          }
    }

      $(document).ready(function () {
          $(dest).html(output);
      
          for (var x = 0; x < pics.length - 1; x++){
            $((".galsplash" + x)).css("opacity", "0");
            $((".galsplash" + x)).delay(200*(x+1)).animate({ opacity: 1 }, 500);
          }
          // Handler for .ready() called.
      });
}