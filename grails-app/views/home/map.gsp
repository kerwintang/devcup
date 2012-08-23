<!DOCTYPE html>
<html>
<head>
   <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
   <style type="text/css">
   	 #map_canvas { height: 100% }
   </style>
   <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUcjnwPxwUdp58lczHXIWxKwdkp8oYaak&sensor=true"></script>
   <script type="text/javascript">
   	function initialize() {

   		var myLatlng = new google.maps.LatLng(14.60885, 121.07979);		

   		
       	var mapOptions = {
         	center: myLatlng,
         	zoom: 14,
         	mapTypeId: google.maps.MapTypeId.ROADMAP
       	};

    	var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
		   	
    	var image = "${resource(dir: 'images', file: 'marker.png')}"

    	//single marker
    	
		var marker = new google.maps.Marker({
	   	    position: myLatlng,
	   	    map: map,
	   	    icon: image,
	   	    title:"Hello World!"
	   	});

	   	// To add the marker to the map, call setMap();
	   	marker.setMap(map);
	   	

	   	// multiple markers
	   	var locations = [
	   	['Eastwood City', 14.60885, 121.07979],
	   	['White Plains', 14.60634, 121.07221],
	   	['Green Park Executive Homes', 14.61616, 121.10597]
	   	];



    }
   </script>
</head>

<body onload="initialize()">
	<div id="map_canvas" style="margin:0 auto;width:960px; height:500px;"></div>
</body>

</html>