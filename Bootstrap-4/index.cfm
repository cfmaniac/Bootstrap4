<cfscript>
  local.bs4 = {
    name="BootStrap 4 Development",
    examplesDir = 'E:\Sites\localhost.com\designs\Bootstrap-4\examples\',
    assets = 'assets/'
  };  
</cfscript>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><cfoutput>#local.bs4.name#</cfoutput></title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="examples/starter-template/starter-template.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
      <a class="navbar-brand" href="#">BootStrap 4 Development</a>
      <ul class="nav navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
    </nav>

    <div class="container">

      <div class="starter-template">
        <h1>Bootstrap starter template</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
      </div>
      <div class="col-md-4">
          <h3>Examples:</h3>
          <ul>
          <cfscript>
            local.bs4.examples = directoryList(local.bs4.ExamplesDir, false, 'query');
            for (i = 1; i <= local.bs4.examples.recordcount; i++) {
              writeOutput('<li> <a href="examples/'& local.bs4.examples.name[i] &'">'& local.bs4.examples.name[i] &'</a></li>');
              
            }
            //writeDump(var=local.bs4.examples);
          </cfscript>
          </ul>
      </div>
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
