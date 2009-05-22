<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
 "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <title><g:layoutTitle default="Grails" /></title>
   <link rel="stylesheet" href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css" type="text/css">
	    <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
       <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
       <g:layoutHead />
       <g:javascript library="application" />				

</head>
<body>
<div id="doc" class="yui-t6">
   <div id="hd" role="banner"><h1>Header</h1></div>
   <div id="bd" role="main">
	<div id="yui-main">
	<div class="yui-b"><div class="yui-g">
			Inside body
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas sit amet metus. Nunc quam elit, posuere nec, auctor in, rhoncus quis, dui. Aliquam erat volutpat. Ut dignissim, massa sit amet dignissim cursus, quam lacus feugiat.
	        <div id="spinner" class="spinner" style="display:none;">
	            <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
	        </div>	
	        <div class="logo"><img src="${createLinkTo(dir:'images',file:'grails_logo.jpg')}" alt="Grails" /></div>	
	        <g:layoutBody /></div>
</div>
	</div>
	<div class="yui-b">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas sit amet metus. Nunc quam elit, posuere nec, auctor in, rhoncus quis, dui. Aliquam erat volutpat. Ut dignissim, massa sit amet dignissim cursus, quam lacus feugiat.</div>
	
	</div>
   <div id="ft" role="contentinfo"><p>Footer</p></div>
</div>
</body>
</html>
