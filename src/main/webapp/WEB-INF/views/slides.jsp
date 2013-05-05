<!--
Google IO 2012/2013 HTML5 Slide Template

Authors: Eric Bidelman <ebidel@gmail.com>
         Luke Mahé <lukem@google.com>

URL: https://code.google.com/p/io-2012-slides
-->
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="chrome=1">
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">-->
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
  <!--This one seems to work all the time, but really small on ipad-->
  <!--<meta name="viewport" content="initial-scale=0.4">-->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <link rel="stylesheet" media="all" href="resources/slides/theme/css/default.css">
  <link rel="stylesheet" media="only screen and (max-device-width: 480px)" href="resources/slides/theme/css/phone.css">
  <base target="_blank"> <!-- This amazingness opens all links in a new tab. -->
  <script data-main="resources/slides/js/slides" src="resources/slides/js/require-1.0.8.min.js"></script>
</head>
<body style="opacity: 0">

<slides class="layout-widescreen">

  <slide class="logoslide nobackground">
    <article class="flexbox vcenter">
      <span><img src="resources/slides/images/expanded_logo_blue.png"></span>
    </article>
  </slide>

  <slide class="title-slide segue nobackground">
    <aside class="gdbar"><img src="resources/slides/images/seal_black.png"></aside>
    <!-- The content of this hgroup is replaced programmatically through the slide_config.json. -->
    <hgroup class="auto-fadein">
      <h1 data-config-title><!-- populated from slide_config.json --></h1>
      <h2 data-config-subtitle><!-- populated from slide_config.json --></h2>
      <p data-config-presenter><!-- populated from slide_config.json --></p>
    </hgroup>
  </slide>

  <slide>
    <hgroup>
      <h2>Traditional Web Applications Model</h2>
    </hgroup>
    <article>
      <ul>
        <li>User interact with the interface and send Http request to the web server</li>
        <li>Server performs some operations based on the user request and then returns the HTML page to the client</li>
        <li>Request to the application will happen synchronously</li>
        <li>Every time user makes a request to the server, user must wait for some time until the server is done creating a new page for that request.</li> 
        
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Advantage</h2>
    </hgroup>
    <article>
      <ul>
        <li>Well understood</li>
        <li>Simple. Does not required learning javascript</li>
        <li>Great if page is a simple form</li>
        <li>Good IDE Support</li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantage</h2>
    </hgroup>
    <article>
      <ul>
        <li>Page can only be updated as a whole</li>
        <li>Synchronous, must wait for server to finish rendering.</li>
        <li>Does not allow RIA (Rich Internet Applcation) - Web application that has many of the characteristics of desktop application</li>
        <li>Not a great model for mobile</li>
      </ul>
    </article>
  </slide>
    
  <slide>
    <hgroup>
      <h2>Ajax Web Applications Model</h2>
    </hgroup>
    <article>
      <ul>
        <li>User interact with the interface and send Http request to the web server</li>
        <li>Server performs some operations based on the user request and then returns the HTML page to the client</li>
        <li>Request to the application will happen synchronously</li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Advantage</h2>
    </hgroup>
    <article>
      <ul>
      	<li>Can update part of the page instead of the whole page</li>
        <li>Can get pretty close to RIA (Rich Internet Applcation)<li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantage</h2>
    </hgroup>
    <article>
      <ul>
      	<li>Ajax requests does not get register in browser's history</li>
        <li>Dynamic updates make it difficult to bookmark and return to a particular state</li>
        <li>Not support by some older browsers</li>
        <li>Crawlers don't excute javascript so they won't index the site</li>
        <li>Asynchronous callback can lead to complex code that is hard to maintain, debug, and test</li> 
        <li>Easy to end up with spaghetti code</li>
        <li>Not so good IDE support</li>
      </ul>
    </article>
  </slide>
    
  <slide>
    <hgroup>
      <h2>Javascript MVC Web Applications Model</h2>
    </hgroup>
    <article>
      <ul>
        <li>User interact with the interface and send Http request to the web server</li>
        <li>Server performs some operations based on the user request and then returns the HTML page to the client</li>
        <li>Request to the application will happen synchronously</li>
      </ul>
    </article>
  </slide>  
  
  <slide>
    <hgroup>
      <h2>Advantage</h2>
    </hgroup>
    <article>
      <ul>
      	<li>todo</li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantage</h2>
    </hgroup>
    <article>
      <ul>
      	<li>todo</li>
      </ul>
    </article>
  </slide>
   
  <slide>
    <hgroup>
      <h2>DOM Manipulation is Ugly</h2>
    </hgroup>
    <article class="smaller">
      <pre class="prettyprint" data-lang="json">
// json data
{
  'clazz':'.Department',
  'id':135,
  'name':'My New Deaprtmnt'
}
</pre>

      <pre class="prettyprint" data-lang="javascript">
// generate html to inject into dom        
var html  = '&lt;tr class="add-item"&gt;';
    html += ' &lt;td&gt;';
    html += '  &lt;label for="name" class="hidden"&gt;Name&lt;/label&gt;';
    html += '  &lt;input id="name" name="name" type="text" placeholder="Name" /&gt;';
    HTML += ' &lt;/td&gt;';
    html += ' &lt;td&gt;';
    html += '  &lt;div class="pull-right"&gt;';
    html += '  &lt;a href="#" class="save" &gt;&lt;i class="icon-ok"&gt;&lt;/i&gt;&lt;/a&gt;';
    html += '  &lt;a href="#" class="cancel"&gt;&lt;i class="icon-remove"&gt;&lt;/i&gt;&lt;/a&gt;';
    html += '  &lt;/div&gt;';
    html += ' &lt;/td&gt;';
    html += '&lt;/tr&gt;';

$('.college').prepend($(html));
</pre>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Must Manual Transform Form To JSON </h2>
    </hgroup>
    <article class="smaller">
      <pre class="prettyprint" data-lang="javascript">
// get value from input        
var person = {
 id: $('#id').val(),
 firstName: $('#firstName').val(),
 lastName: $('#lastName').val(),
 email: $('#email').val()
 phone: $('#phone').val()
 address: $('#address').val()
 city: $('#city').val()
 zipcode: $('#zipcode').val()
};

// save data via ajax
$.ajax({ type: 'PUT', url: 'api/person/' + $('#id').val(), data: JSON.stringify(person) })
 .done(function (response) {
    // do something with response
 });
</pre>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Slide with Image</h2>
    </hgroup>
    <article>
      <img src="resources/slides/images/chart.png" class="reflect" alt="Description" title="Description">
      <footer class="source">source: place source info here</footer>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Slide with Image (Centered horz/vert)</h2>
    </hgroup>
    <article class="flexbox vcenter">
      <img src="resources/slides/images/barchart.png" alt="Description" title="Description">
      <footer class="source">source: place source info here</footer>
    </article>
  </slide>

  <slide class="fill nobackground" style="background-image: url(resources/slides/images/demo.png)">
    <hgroup>
      <h2 class="white">Full Image (with Optional Header)</h2>
    </hgroup>
    <footer class="source white">www.flickr.com/photos/25797459@N06/5438799763/</footer>
  </slide>


  <slide>
    <article>
      <iframe data-src="http://localhost:8080/demo/javascript/#/person/85"></iframe>
    </article>
  </slide>


  <slide class="thank-you-slide dark nobackground">
    <aside class="gdbar right"><img src="resources/slides/images/seal_blue.png"></aside>
    <article class="flexbox vleft auto-fadein">
      <h2>Thank You!</h2>
    </article>
    <p class="auto-fadein" data-config-contact>
      <!-- populated from slide_config.json -->
    </p>
  </slide>


  <slide class="backdrop"></slide>

</slides>


<!--[if IE]>
  <script src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1/CFInstall.min.js"></script>
  <script>CFInstall.check({mode: 'overlay'});</script>
<![endif]-->
</body>
</html>
