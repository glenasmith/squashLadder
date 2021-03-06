<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> <html>
<head> <title><g:layoutTitle default="Grails" /></title> <link rel="stylesheet"
href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css"
type="text/css"> <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
<link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}"
type="image/x-icon" /> <g:layoutHead /> <g:javascript library="application" />

</head> <body> <div id="doc" class="yui-t6"> <div id="hd" role="banner"> <div id="spinner"
class="spinner" style="display:none;"> <img
src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" /> </div> <div
class="logo"><img src="${createLinkTo(dir:'images',file:'logo.jpg')}" alt="Squash Ladder"
/></div></div> 
<div id="bd" role="main"> 
	<div id="yui-main"> 
		<div class="yui-b">
			<div class="yui-g"> 
 				<g:layoutBody />
			</div> 
		</div>
	</div>
	<div class="yui-b">
		<g:render template="/player/playerGraph" />
	</div>

 </div>
 <div id="ft" role="contentinfo"><div class="footer"><p>This site will go live with results from games starting 26th May 2009. Currently only sample data only is shown.</p></div></div> </div> </body> </html>
