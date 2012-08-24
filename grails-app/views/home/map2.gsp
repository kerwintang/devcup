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
   		           "title": "Eastwood City",
   		           "lat": 14.60885,
   		           "lng": 121.07979,
   		           "description": "Eastwood city is the best!"
   		         },
   		         {
   		           "title": "White Plains",
   		           "lat": 14.60634,
   		           "lng": 121.07221,
   		           "description": "White Plains"
   		         },
   		         {
   		           "title": "Green Park Executive Homes",
   		           "lat": 14.61616,
   		           "lng": 121.10597,
   		           "description": "Green Park"
   		         }
   		       ];


   		// Creating a new map
   		var map = new google.maps.Map(document.getElementById("map_canvas"), {
   		  center: new google.maps.LatLng(14.60885, 121.07979),
   		  zoom: 14,
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