﻿<%@ Page Language="C#" CodeFile="home.aspx.cs" Inherits="home" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<!DOCTYPE html>
<html lang="heb" dir="rtl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Playground</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
    <link href="css/circle.css" rel="stylesheet" />
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="font-family:Rubik">
  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="left" data-original-title="הסתר פרופיל"></div>
              </div>
            <!--logo start-->
            <a href="home.aspx" class="logo"><img src="media/LOGOr.png" style="float:right; width:170px;" /></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="home.aspx#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul id="taskbar-ul" class="dropdown-menu extended tasks-bar">
                            
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="home.aspx#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="home.aspx#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="home.aspx#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="home.aspx#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="home.aspx#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="home.aspx#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-left top-menu">
                    <li><a class="logout" href="login.aspx">התנתק</a></li>
            	</ul>
            </div>
        </header>
         <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">        
              	  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end--> 

            <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <div class="row">
                  <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                      <div id="mes-div">
                      </div>


                       <!-- USERS ONLINE SECTION -->
						<h3>TEAM MEMBERS</h3>
                      <!-- First Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="assets/img/ui-divya.jpg" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">DIVYA MANIAN</a><br/>
                      		   <muted>Available</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Second Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="assets/img/ui-sherman.jpg" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">DJ SHERMAN</a><br/>
                      		   <muted>I am Busy</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Third Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="assets/img/ui-danro.jpg" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">DAN ROGERS</a><br/>
                      		   <muted>Available</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Fourth Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="assets/img/ui-zac.jpg" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">Zac Sniders</a><br/>
                      		   <muted>Available</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Fifth Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="assets/img/ui-sam.jpg" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">Marcel Newman</a><br/>
                      		   <muted>Available</muted>
                      		</p>
                      	</div>
                      </div>

                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                      
                  </div><!-- /col-lg-3 -->
                  <div id="sub-div" class="col-lg-9 main-chart"></div>

                <script src="js/handlebars-v4.0.5.js"></script>
            <script id="taskbar-temp" type="text/x-handlebars-template">
                <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">יש לך 4 משימות שלא הושלמו</p>
                            </li>
                            {{#each sub}}
                            <li>
                                <a href="home.aspx#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            {{/each}}
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
            </script>
            <script id="not-temp" type="text/x-handlebars-template">
                 <div id="notifications">
                    <h3>התראות</h3>
                    <div style="height:300px;padding:8px;">
                           {{#each_upto sub 6}}
                              <div class="noti-div">
                                  <i style="float:right" class="material-icons">{{icon}}</i><span>{{title}}</span>
                                <span>{{msg}}</span>
                                <span style="color:#9e9e9e; font-size:10px;"> {{datec}}</span>
                                  <hr />
                              </div>                         
                        {{/each_upto}}
                    </div>
                    <div class="seeAll"><a href="#">הראה את כולם</a></div>
                </div>
            </script>
            <script id="master-temp" type="text/x-handlebars-template">
                 <div id="master" class="c100 dark small p<%=Session["shlita"] %> white center" > <!-- צריך לחלק פה סאיו בסיתרגיל! !-->
                                <span><%=Session["shlita"] %>%</span>
                                <div class="slice">
                                    <div class="bar"></div>
                                    <div class="fill"></div>
                                </div>
                            </div>
            </script>
                <script id="sub-temp" type="text/x-handlebars-template">
                    					<div class="row mtbox">
                    {{#each sub}}
                    <div class="col-lg-4 col-md-4 col-sm-4 mb">
							<div class="content-panel pn">
								<div id="blog-bg" style="background-size:cover; background-position: center; 
background-image: url(../media/new/opc/{{subjectID}}.png);background-color:#{{GetMasterColor2 (GetMasterPrecent cou ctargil)}}; border-top:solid #{{GetMasterColor2 (GetMasterPrecent cou ctargil)}} 7.5px">
									<div style="margin-top:8px" class="c100 small p{{GetMasterPrecent cou ctargil}} white center">
                                        <span>{{GetMasterPrecent cou ctargil}}%
                                </span> <!-- צריך לחלק פה סאיו בסיתרגיל! !-->              
                                <div class="slice">
                                    <div class="bar"></div>
                                    <div class="fill"></div>
                                </div>
                            </div></div>
									<div class="blog-title" style="font-family:Rubik;font-weight:300;font-size:20px">{{subject}}</div>
								<div class="blog-text">
                                  <span style="font-family:Rubik;font-weight:400">נותרו {{GetLeft cou ctargil}} תרגילים</span><br />
                                                <a href="targil{{subjectID}}.aspx">לתרגילים</a>


								</div>
							</div>
						</div>
                    {{/each}}
                                            </div>
                </script>
                <script id="pro-temp" type="text/x-handlebars-template">
                    
                    {{#each sub}}
                    <p class="centered"><img src="{{pic}}" class="img-circle" width="60"></p>
              	    <h5 class="centered" style="font-family:Rubik;font-weight:700; font-size:20px">{{name}}</h5>
                    <div class="progress" style="margin:5px">
						  <div class="progress-bar progress-bar-info" role="progressbar" id=progi runat="server" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
						    <span class="sr-only"><%=prog.ToString()%>%</span>
						  </div>
						</div>
                    <h5 class="centered" style="font-family:Rubik;font-size:15px;line-height:20%;font-weight:400"> <%=tilnext.ToString()%> נקודות עד הרמה הבאה</h5>             	  	
                    <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>דף הבית</span>
                      </a>
                    </li>
                    
                        <li class="sub-menu">
                        <a href="javascript:;" >
                            <i class="fa fa-desktop"></i>
                            <span>UI Elements</span>
                        </a>
                        <ul class="sub">
                            <li><a  href="general.html">General</a></li>
                            <li><a  href="buttons.html">Buttons</a></li>
                            <li><a  href="panels.html">Panels</a></li>
                        </ul>
                    </li>
                    {{/each}}
                </script>
                <script id="mes-temp" type="text/x-handlebars-template">
                    	<h3 style="font-family:Rubik;font-weight:900;font-size:25px">הודעות</h3>
                        {{#each sub}}
                    <div id="{{title}}" style="display:{{CheckClass kita title}}">
                        <div class="desc" >
                      	    <div class="thumb">
                      		    <span class="badge bg-theme"><i class="material-icons">{{icon}}</i></span>
                      	    </div>
                      	<p class="details">
                      		<p style="font-family:Rubik;font-weight:700">{{kita}}<br/>
                      		   <p style="font-family:Rubik;font-weight:500">{{title}}</p>
                                  <p style="font-family:Rubik;font-weight:400">{{msg}}</p>
                               <p style="font-family:Rubik;font-weight:300">{{byy}} {{datec}}  </p>                    		
                      		</p>
                      	</div>
                      </div>
                    </div>
                       
                        {{/each}}
                </script>
            <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'ליונתן היה ממש משעמם!',
            // (string | mandatory) the text inside the notification
            text: 'ההתראה הזאת יכולה להישאר פה עד שסוגרים אותה או אחרי כמה שניות! דרך אגב ממש צריך לסדר את הפונטים בעברית',
            // (string | optional) the image to display on the right
            image: 'media/0pres.png',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: false,
            // (int | optional) the time you want it to be alive for before fading out
            time: '10000',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class',
            position: 'top-left',
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },

                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
                <script type="text/javascript">
                    var data = '<ul><li id="noti_Container"><div id="noti_Counter"></div><div id="noti_Button"></div></li></ul>';
                    Handlebars.registerHelper('CheckClass', function (kita,title){
                        var kita = kita.split(",");
                        var Mykita = "<%=Session["kita"]%>";
                        for (var i = 0; i < kita.length; i++) {
                            if(kita[i] == Mykita){
                                return "initial";
                                break;
                            }
                        }
                        return "none";      
                    });
                    Handlebars.registerHelper('each_upto', function (ary, max, options) {
                        if (!ary || ary.length == 0)
                            return options.inverse(this);

                        var result = [];
                        for (var i = 0; i < max && i < ary.length; ++i)
                            result.push(options.fn(ary[i]));
                        return result.join('');
                    });
                    Handlebars.registerHelper('GetMasterColor', function(master) {
                            if (master<25){
                                return "red";
                            }
                            else if (master<50){
                                return "orange";
                            }
                            else if (master<75){
                                return "yellow";
                            }
                            else if (master>=75){
                                return "green";
                            }
                    });
                    Handlebars.registerHelper('GetMasterColor2', function (master) {
                        if (master < 25) {
                            return "e53935";
                        }
                        else if (master < 50) {
                            return "ff6d00";
                        }
                        else if (master < 75) {
                            return "fbc02d";
                        }
                        else if (master >= 75) {
                            return "5fd400";
                        }
                    });
                    Handlebars.registerHelper('GetMasterPrecent', function (cou, ctargil) {
                        var pre = parseInt(cou) / parseInt(ctargil);
                        var final = pre * 100;
                        return parseInt(final);

                    });
                    Handlebars.registerHelper('GetLeft', function (cou, ctargil) {
                        var left = parseInt(ctargil) - parseInt(cou);
                        return parseInt(left);
                    });
                    Handlebars.registerHelper('GetLevel', function (xp) {
                        if (xp >= 0 && xp < 100)
                        {
                            r = 1;
                        }
                        if (xp >= 100 && xp < 250)
                        {
                            r = 2;
                        }
                        if (xp >= 250 && xp < 500)
                        {
                            r = 3;
                        }
                        if (xp >= 500 && xp < 900)
                        {
                            r = 4;
                        }
                        if (xp >= 900 && xp < 1450)
                        {
                            r = 5;
                        }
                        return r;
                    });
                        var subInfo = document.getElementById("sub-temp").innerHTML;
                        var subTemplate = Handlebars.compile(subInfo);
                        var subData = subTemplate(<%=this.json%>);
                        document.getElementById("sub-div").innerHTML += subData;
                        
                        var proInfo = document.getElementById("pro-temp").innerHTML;
                        var proTemplate = Handlebars.compile(proInfo);
                        var proData = proTemplate(<%=this.jsonPro%>);
                        document.getElementById("nav-accordion").innerHTML += proData;

                        var mesInfo = document.getElementById("mes-temp").innerHTML;
                        var mesTemplate = Handlebars.compile(mesInfo);
                        var mesData = mesTemplate(<%=this.jsonMes%>);
                    document.getElementById("mes-div").innerHTML += mesData;

                        var notInfo = document.getElementById("not-temp").innerHTML;
                        var notTemplate = Handlebars.compile(notInfo);
                        var notData = notTemplate(<%=this.jsonMes%>);
                      // document.getElementById("not-div").innerHTML += notData;

                        /*var masterInfo = document.getElementById("master-temp").innerHTML;
                        var masterTemplate = Handlebars.compile(masterInfo);
                        var masterData = masterTemplate(< %=this.jsonPro%>);
                        document.getElementById("master-div").innerHTML += masterData;
                        */
                        var taskbarInfo = document.getElementById("taskbar-temp").innerHTML;
                        var taskbarTemplate = Handlebars.compile(taskbarInfo);
                        var taskbarData = taskbarTemplate(<%=this.json%>);
                        document.getElementById("taskbar-ul").innerHTML += taskbarData;
                        if ("<%=Session["userName"]%>" != null)
                        {
                            
                        }
                    var x;
                    function isEmpty(el) {
                        return !$.trim(el.html())
                    }

                   
                </script>                
        </div>    
</body>
</html>