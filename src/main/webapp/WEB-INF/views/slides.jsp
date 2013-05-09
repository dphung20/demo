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
        <li>Users interact with the interface and send Http requests to the web server</li>
        <li>Server performs operations based on the user request and returns an HTML page to the client</li>
        <li>Requests to the application happen synchronously</li>
        <li>Each user interaction requires a request be issued to the application server where the content is rendered and returned to the user's browser. It is not unusal for this process to take several seconds.</li> 
      </ul>

      <br/>

      <div class="flexbox vcenter">
            <img src="resources/slides/images/traditionalmodel.gif"/>
            <footer class="source">http://publib.boulder.ibm.com/infocenter/radhelp/v7r5/index.jsp?topic=%2Fcom.ibm.etools.webtoolscore.doc%2Ftopics%2Fcajax.html</footer>
      </div>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Advantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Simple. Does not require learning javascript</li>
        <li>Great if the page is a simple form</li>
        <li>Good IDE support</li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Page can only be updated as a whole</li>
        <li>Synchronous. Must wait for server to finish rendering.</li>
        <li>Does not allow for RIA (Rich Internet Application) - A Web application that has many characteristics of a desktop application</li>
        <li>Not a great model for mobile</li>
      </ul>
    </article>
  </slide>
    
  <slide>
    <hgroup>
      <h2>Ajax Web Application Model (Web 2.0)</h2>
    </hgroup>
    <article>
      <ul>
        <li>Asynchronous Web applications</li>
        <li>Allows the user to interact with a Web page without the interruption of page reloads</li>
        <li>Web site interaction happens quickly - only portions of the page reload and refresh</li>
        <li>Ajax creates an interactive and productive connection between a user and the application</li>
      </ul>

      
      <div class="flexbox vcenter">
            <img src="resources/slides/images/ajaxmodel.gif"/>
            <footer class="source">http://publib.boulder.ibm.com/infocenter/radhelp/v7r5/index.jsp?topic=%2Fcom.ibm.etools.webtoolscore.doc%2Ftopics%2Fcajax.html</footer>
      </div>      
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Advantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Can update part of a Web page instead of the whole page</li>
        <li>Can get close to RIA<li>
        <li>Asynchronous. Non-blocking interaction. Updates happen in the background</li>
        <li>Fluid user experience</li> 
      </ul>

      <div class="flexbox vright">
            <img src="resources/slides/images/dropdown.png"/>
      </div>  
      <div class="flexbox vleft">
            <img src="resources/slides/images/tree.png"/>
      </div>        
      <div class="flexbox vcenter">
            <img src="resources/slides/images/typeahead.png"/>
      </div>           
    </article>
     <div class="source">Exampls of UIs that are easy with Ajax</div>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Ajax requests are not registered in a browser's history</li>
        <li>Dynamic updates make it difficult to bookmark and return to a particular state</li>
        <li>Not supported by some browsers</li>
        <li>Crawlers don't excute javascript so they won't index the site</li>
        <li>Asynchronous callbacks can lead to complex code that is difficult to maintain, debug, and test</li> 
        <li>Potential for spaghetti code</li>
        <li>IDE support is limited</li>
        <li>Javascript knowledge needed</li>
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
  'name':'My New Department'
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
      <h2>Must Manually Transform Form To JSON </h2>
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
      <h2>Javascript MVC Web Applications Model</h2>
    </hgroup>
    <article>
      <ul>
        <li>Same as Ajax model but applies MVC design pattern</li>
        <li>Normally leads to single page application</li>
        <li>The Controller concept in MVC is loosely defined in many JavaScript frameworks</li>
        <li>Solves some problems associated with an Ajax model</li>
        <li>Provides an order and structure to JavaScript code</li>
      </ul>
    </article>
  </slide>  
  
  <slide>
    <hgroup>
      <h2>Advantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>MVC is a well established design pattern</li>
        <li>Separation of concerns</li>
        <li>Leads to more testable code</li>
        <li>Better code structure reduces spaghetti code.
        <li>Maintainable</li>
      </ul>
    </article>
  </slide>
  
  <slide>
    <hgroup>
      <h2>Disadvantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Can push too much business logic to client if not careful</li>
        <li>Higher potential for memory leaks if not careful</li>
        <li>Crawlers don't execute JavaScript so they won't index the site</li>
        <li>Developers must learn JavaScript</li>
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Angular.js</h2>
    </hgroup>
    <article>
      <ul>
        <li>JavaScript framework by Google</li>
        <li>Full fledged framework</li>
        <li>Makes HTML your template</li>
        <li>Enterprise-level Testing</li>
      </ul>

      <br/><br/><br/><br/><br/><br/><br/><br/>
      <div class="flexbox vright">
            <img src="resources/slides/images/AngularJS-large.png"/>
      </div>        
    </article>
  </slide>  
  
  <slide>
    <hgroup>
      <h2>Advantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Two-way data binding</li>
        <li>Dependency Injection</li>
        <li>Decouple DOM manipulation from application logic</li>
        <li>Reduction of Code, faster development time</li>
        <li>Testable, E2E Testing</li>
        <li>Chrome plugin</li>
        <li>Actively Developed</li>
        <li>Backed by Google, who are making changes & recommendations to W3C. (ie. Web Components)</li>
        <li>Can start small. Does not require rewrite of the whole application</li>
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Disadvantages</h2>
    </hgroup>
    <article>
      <ul>
        <li>Requires a greater understanding of the DOM at the node level</li>
        <li>Writing directives can be difficult</li>
        <!-- <li>Less control compared to micro-frameworks</li> -->
        <li>Must learn the "Angular Way"</li>
        <li>Must learn JavaScript</li>
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Core Concepts</h2>
    </hgroup>
    <article>
      <ul>
        <li>Controller - Contains no DOM manipulation and binds data to the scope</li>
        <li>Service - RESTful api abstracted to an object</li>
        <li>Directive - Extends HTML</li>
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>Cost</h2>
    </hgroup>
    <article>
      <ul>
          <li> Requires developers to learn both server side and client side programming</li>
          <li> Must understand HTML, DOM updates, XMLHttpRequest, and JavaScript</li>
          <li> Must understand MVC Models</li>
          <li> Must understand dependency injections</li>
      </ul>
    </article>
  </slide>

  <slide>
    <hgroup>
      <h2>ROI - Return on Investment</h2>
    </hgroup>
    <article>
      <ul>
        <li> Provides similar user interface to a desktop application. This makes the application more intuitive and reduces the cost to provide in-depth training</li>
        <li> Adopting Ajax techniques is becoming a business requirement to maintain parity with the rest of the industry and match growing user expectations about Web-based user experiences</li>
        <li> Increases developer productivity by reducing the amount of coding needed</li>
        <li> Leverages existing frameworks and thereby reduces the cost of having to code everything from scratch (ie. JQuery, Jquery UI, Bootstrap, etc.)
        <li> Reduces overall maintenance cost</li>
        <li> Testable Javascript code </li>
        <li> Faster development time</li>
        <li> Testing solutions for Mobile platforms</li>
      </ul>
    </article>
  </slide>


  <slide class="">
    <hgroup class="">
      <h2>Angular Reference</h2>
    </hgroup>
    <article>
      <ul>
      <li><a href="http://angularjs.org/">Official Angular Page</a> </li>
      <li><a href="http://www.egghead.io/">Series of really good tutorials by John Lindquist</a></li>
      <li><a href="http://weblogs.asp.net/dwahlin/archive/2013/04/12/video-tutorial-angularjs-fundamentals-in-60-ish-minutes.aspx">Angular Fundamentals in 60+ Minutes</a></li>
      <li><a href="http://www.youtube.com/user/angularjs">Youtube channel on google meetups</a></li>
      <li><a href="http://tekpub.com/productions/angular">Tekpub video on Angular</a> </li>
      </ul>
    </article> 
  </slide>

  <slide class="segue dark nobackground">
    <hgroup class="">
      <h2>Demo Application</h2>
      <br/>
      <a href="https://github.com/dphung20/demo">https://github.com/dphung20/demo</a>
    </hgroup>
  </slide>

  <slide>
    <hgroup>
      <h2>Takeaway</h2>
    </hgroup>
    <article>
      <ul>
        <li> If you are doing a lot of dynamic dom minipulation and using a lot of javascript you should consider using a javascript MVC</li>
        <li> To write anything maintainable, you have to write test </li>
        <li> Angular makes writing RIA application easier and quicker </li>
        <li> Angular makes it possible to write test for javascript </li>
        <li> Angular results in fewer lines of code compared with other RIA/Javascript MVC framework </li>
      </ul>
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
