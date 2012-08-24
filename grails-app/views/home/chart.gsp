<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Devcup 2</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<div style="margin:0 auto;width:500px;padding-top:20px;">
			<img src="http://chart.apis.google.com/chart?chxl=0:|Eastwood+City|White+Plains|Green+Park|3|4|5|1:|0|25|50|2:|min|average|max&chxp=2,10,50,95&chxr=0,-5,100|1,-10,100&chxt=x,y,r&chbh=80,0&chs=580x220&cht=bvg&chco=76A4FB&chds=6,50&chd=t:15,45,32&chg=10,50,0,4&chtt=Violations+Per+Location" width="580" height="220" alt="Violations Per Location" />
			<img src="http://chart.apis.google.com/chart?chs=400x175&cht=p&chco=7777CC|76A4FB|3399CC|3366CC&chd=s:YSM&chdl=Company+A+-+40+%25|Company+B+-+30%25|Company+C+-+20%25&chl=A|B|C&chma=0,5&chtt=Violations+Per+Bus+Company" width="400" height="175" alt="Violations Per Bus Company" />
		</div>
	</body>
</html>
