$(function(){
// IPad/IPhone
	var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
	ua = navigator.userAgent,

	gestureStart = function () {viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";},

	scaleFix = function () {
		if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
			viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
			document.addEventListener("gesturestart", gestureStart, false);
		}
	};
	
	$(".w-summary").each(function(){
		
		$(".more", this).click(function(){
			$(this).parent().hide();
			$(this).parent().parent().children(".w-content").fadeIn();
		});
		
	});
	
	$(".w-content").each(function(){
		
		$(".less", this).click(function(){
			$(this).parent().hide();
			$(this).parent().parent().children(".w-summary").fadeIn();
		});
		
	});
	
	scaleFix();
	// Menu Android
	if(window.orientation!=undefined){
    var regM = /ipod|ipad|iphone/gi,
     result = ua.match(regM)
    if(!result) {
     $('.sf-menu li').each(function(){
      if($(">ul", this)[0]){
       $(">a", this).toggle(
        function(){
         return false;
        },
        function(){
         window.location.href = $(this).attr("href");
        }
       );
      } 
     })
    }
   }
   $(window).load(function() {
				$('.flexslider').flexslider({
				  animation: "slide"
				});
			 });
});
var ua=navigator.userAgent.toLocaleLowerCase(),
 regV = /ipod|ipad|iphone/gi,
 result = ua.match(regV),
 userScale="";
if(!result){
 userScale=",user-scalable=0"
}
document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0'+userScale+'">')