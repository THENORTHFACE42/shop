$(function(){
	   var AllHet = $(window).height();
	   var mainHet= $('.floatCtro').height();
	   var fixedTop = (AllHet - mainHet)/2
	 //  $('div.floatCtro').css({top:fixedTop+'px'}); 
	   $('div.floatCtro p').click(function(){
			var ind = $('div.floatCtro p').index(this)+1;
			var topVal = $('#float0'+ind).offset().top;
			$('body,html').animate({scrollTop:topVal+1},1000)
		})
		$('div.floatCtro a').click(function(){
			$('body,html').animate({scrollTop:0},1000)
			})
	   $(window).scroll(scrolls)
	   scrolls()
	   function scrolls(){
		   var f1,f2,f3,f4,f5,f6,f7,f8,f9,bck;
		   var fixRight = $('div.floatCtro p');
		   var blackTop = $('div.floatCtro a')
		   var sTop = $(window).scrollTop();
		   //alert(sTop);
		   fl = $('#float01').offset().top;
		   //alert(fl);
		   f2 = $('#float02').offset().top;
		   //alert(f2);
		   f3 = $('#float03').offset().top;
		   f4 = $('#float04').offset().top;
		   f5 = $('#float05').offset().top;
		   f6 = $('#float06').offset().top;
		   f7 = $('#float07').offset().top;
		   f8 = $('#float08').offset().top;
		   f9 = $('#float09').offset().top;
		   if(sTop<=f2){
			   $(".floatCtro").hide();
			   //alert(sTop);
			   blackTop.fadeOut(300).css('display','none')
			   }
		   else{
			   blackTop.fadeIn(300).css('display','block')
			   }
		   
		   if(sTop>=fl-10){
			   $(".floatCtro").show();
			   fixRight.eq(0).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f2){
			   fixRight.eq(1).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f3){
			   fixRight.eq(2).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f4){
			   fixRight.eq(3).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f5){
			   fixRight.eq(4).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f6){
			   fixRight.eq(5).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f7){
			   fixRight.eq(6).addClass('cur').siblings().removeClass('cur');
			   } 
		   if(sTop>f8){
			   fixRight.eq(7).addClass('cur').siblings().removeClass('cur');
			   }
		   if(sTop>f9){
			   fixRight.eq(8).addClass('cur').siblings().removeClass('cur');
			   }
	     }
	   })