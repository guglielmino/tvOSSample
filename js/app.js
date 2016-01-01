App.onLaunch = function(options) {
  var menu = mainMenu(); 
  navigationDocument.presentModal(menu);
}
 
var mainMenu = function() {
  var tvmlCode = `<?xml version="1.0" encoding="UTF-8" ?>
   <document>
   <mainTemplate>
      <background>
         <img src="https://c1.staticflickr.com/7/6050/6350327968_33f008d9c2_b.jpg" />
      </background>
      <menuBar>
         <section>
            <menuItem>
               <title>PLAY</title>
            </menuItem>
            <menuItem>
               <title>SCENES</title>
            </menuItem>
            <menuItem>
               <title>EXTRAS</title>
            </menuItem>
         </section>
      </menuBar>
   </mainTemplate>
</document>
`
    var parser = new DOMParser();
    var menuDoc = parser.parseFromString(tvmlCode, "application/xml");
    return menuDoc
}