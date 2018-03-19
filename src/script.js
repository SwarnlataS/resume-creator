$(document).ready(function(){
    
//to fix navbar
    // var fixmeTop = $('nav').offset().top;
	// $(window).scroll(function() {
	//     var currentScroll = $(window).scrollTop();
	//     if (currentScroll >= fixmeTop) {
	//         $('nav').css({
	//             position: 'fixed',
	//             top: '0',
	//             left: '0'
	//         });
	//     } else {
	//         $('nav').css({
	//             position: 'static'
	//         });
	//     }
    // });
    
    //next/previous button
  var $tabs = $('#tabs').tabs();
  var tabsTotal = $(".ui-tabs-panel").length;
  var addButton = function(rel,text){
      return  $("<a>")
              .attr("href","#tabs")
              .attr("rel",rel)
              .addClass("tab-nav waves-effect waves-light btn")
              .append(text);
  };

  $(".ui-tabs-panel").each(function (i) {
       if (i != 0) {
          $(this).append(addButton(i-1,"Back"));
      }if ((i + 1) < tabsTotal) {
          $(this).append(addButton(i+1,"Next"));
      }
  });

  $('.tab-nav').click(function () {
      $tabs.tabs("option", "active", $(this).attr("rel"));
  });
});