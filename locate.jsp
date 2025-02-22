<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>

  <p>Click the button to get your coordinates.</p>

  <button onclick="getLocation()">Try It</button>

  <p id="demo"></p>
  <script>
    var x = document.getElementById("demo");

    function getLocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
      }
    }

    function showPosition(position) {
      var latlon = position.coords.latitude + "," + position.coords.longitude;

      var img_url = "https://maps.googleapis.com/maps/api/staticmap?center=" + latlon +
        "&zoom=14&size=400x300&sensor=false&key=YOUR_KEY";

      document.getElementById("mapholder").innerHTML = "<img src='" + img_url + "'>";
    }
  </script>
</body>

</html>