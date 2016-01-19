<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>Carteira Digital & Sala do Futuro</title>
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- http://davidbcalhoun.com/2010/viewport-metatag -->
    <meta name="HandheldFriendly" content="True" />
    <meta name="MobileOptimized" content="320" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!--// OPTIONAL & CONDITIONAL CSS FILES //-->

    <!-- bootstrap 3.3.5 dist -->
    <r:external uri="/css/dist/css/bootstrap.min.css" />
    <r:external uri="/css/dist/css/bootstrap-theme.min.css" />
    <!-- main theme files -->
    <r:external uri="/css/tema-carteira/css/carteira.css"/>


    <!-- Webfonts -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato:300,400,700' type='text/css' />

    <!-- All javascripts are located at the bottom except for HTML5 Shim -->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
   		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   		<script src="/js/include/respond.min.js"></script>
   	<![endif]-->

    <!-- For Modern Browsers -->
    <link rel="shortcut icon" href="/img/favicons/favicon.png" />
    <!-- For everything else -->
    <link rel="shortcut icon" href="/img/favicons/favicon.ico" />
    <!-- For retina screens -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/img/favicons/apple-touch-icon-retina.png" />
    <!-- For iPad 1-->
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/img/favicons/apple-touch-icon-ipad.png" />
    <!-- For iPhone 3G, iPod Touch and Android -->
    <link rel="apple-touch-icon-precomposed" href="/img/favicons/apple-touch-icon.png" />

    <!-- iOS web-app metas -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />

    <!-- Startup image for web apps -->
    <link rel="apple-touch-startup-image" href="/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)" />
    <link rel="apple-touch-startup-image" href="/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)" />
    <link rel="apple-touch-startup-image" href="/img/splash/iphone.png" media="screen and (max-device-width: 320px)" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>

    <g:render template="/layouts/principal/header" />
    <g:layoutBody/>
    <g:render template="/layouts/principal/footer" />

</body>
</html>