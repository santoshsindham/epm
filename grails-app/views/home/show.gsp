<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="/epm/assets/carousal_2.png" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1><code>Milestones</code></h1>
              <p><strong><em>Small and quality set of metrics should be chosen, large set of metrics should be avoided as it is very confusing to understand large set of metrics. Metrics should also be uniform and everybody in team should agree with it.</em></strong></p>
              <p><a class="btn btn-lg btn-success" href="#" role="button"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Milestones! Click here...</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="/epm/assets/carousal_2.png" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1><code>Metrics</code></h1>
              <p><strong><em>After defining the metrics the next step is to track the metrics. Since tracking is a constant activity so its always nice to automate the tracking part. Automation reduces time required to track the metrics, analyze them and measure them.</em></strong></p>
              <p><a class="btn btn-lg btn-success" href="#" role="button"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Capture Metrics! Click here...</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="/epm/assets/carousal_2.png" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1><code>Reporting</code></h1>
              <p><strong><em>Reporting of the metrics is the most important step, you should report test metrics to stakeholders so that they have clear picture of project progress.</em></strong></p>
              <p><a class="btn btn-lg btn-success" href="#" role="button"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Reports! Click here...</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    
    
	<div class="container">
	
	
      
      <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph4.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Schedule Variance</h2>
          <pre>(Actual Duration - Planned Duration)/ (Planned Duration) *100 for each milestone(test phases)</pre>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph5.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Test Execution productivity</h2>
          <pre>Number of Test Cases(Scripts) Executed / Effort in Person Days </pre>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph6.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Effort Variance</h2>
          <pre>(Actual Effort - Planned Effort)/ (Planned Effort) *100 for each milestone(test phases)</pre>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Defect Leakage</h2>
          <pre>Total number of defects leaked in to UAT and Prod/Total number of defects found in the project(System testing, UAT and Prod)</pre>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph2.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Test Case Design Productivity</h2>
          <pre>Number of Test Cases(Scripts) Created / Effort in Person Days</pre>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="/epm/assets/graph3.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Requirement Stability Index</h2>
          <pre>(Total number of requirements -(Total number of requirements added+Total number of requirements modified+Total number of requirement deleted)/Total number of requirements*100</pre>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
	
	
    <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Defect Identification Efficiency <span class="text-muted">(percentage)</span></h2>
          <pre class="lead">(Total no of application defects found by test team -Total number of defects rejected by the customer) / Total Defects Logged in the project life cycle</pre>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="/epm/assets/graph1.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Test Coverage <span class="text-muted">(number)</span></h2>
          <pre class="lead">((Total number of testable requirements mapped to test cases or Scripts ) /(Total number of baselined testable requirements)*100</pre>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="/epm/assets/graph2.jpg"  alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">% Automated integration / regression test <span class="text-muted">(percentage)</span></h2>
          <pre class="lead">Degree of automation = # automated test cases / # test cases</pre>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="/epm/assets/graph3.jpg"  alt="Generic placeholder image">
        </div>
      </div>
      

      
    </div>
	</body>
</html>
