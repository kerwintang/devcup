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

   		var json = [
   		         {
   		           "title": "Stockholm",
   		           "lat": 59.3,
   		           "lng": 18.1,
   		           "description": "Stockholm is the capital and the largest city of Sweden and constitutes the most populated urban area in Scandinavia with a population of 2.1 million in the metropolitan area (2010)"
   		         },
   		         {
   		           "title": "Oslo",
   		           "lat": 59.9,
   		           "lng": 10.8,
   		           "description": "Oslo is a municipality, and the capital and most populous city of Norway with a metropolitan population of 1,442,318 (as of 2010)."
   		         },
   		         {
   		           "title": "Copenhagen",
   		           "lat": 55.7,
   		           "lng": 12.6,
   		           "description": "Copenhagen is the capital of Denmark and its most populous city, with a metropolitan population of 1,931,467 (as of 1 January 2012)."
   		         }
   		       ];


   		// Creating a new map
   		var map = new google.maps.Map(document.getElementById("map_canvas"), {
   		  center: new google.maps.LatLng(57.9, 14.6),
   		  zoom: 6,
   		  mapTypeId: google.maps.MapTypeId.ROADMAP
   		});

		// Add markers
   		for (var i = 0, length = json.length; i < length; i++) {
   		  var data = json[i],
   		      latLng = new google.maps.LatLng(data.lat, data.lng); 

   		  // Creating a marker and putting it on the map
   		  var marker = new google.maps.Marker({
   		    position: latLng,
   		    map: map,
   		    title: data.title
   		  });
   		}

   		var infoWindow = new google.maps.InfoWindow();

   		// Attaching a click event to the current marker
   		google.maps.event.addListener(marker, "click", function(e) {
   		  infoWindow.setContent(data.description);
   		  infoWindow.open(map, marker);
   		});

	   	// Creating a closure to retain the correct data 
	   	//Note how I pass the current data in the loop into the closure (marker, data)
	   	(function(marker, data) {
	
	   	  // Attaching a click event to the current marker
	   	  google.maps.event.addListener(marker, "click", function(e) {
	   	    infoWindow.setContent(data.description);
	   	    infoWindow.open(map, marker);
	   	  });
	
	   	})(marker, data);
		
    }
   </script>
</head>

<body onload="initialize()">
	<div id="map_canvas" style="margin:0 auto;width:960px; height:500px;"></div>
</body>

</html>