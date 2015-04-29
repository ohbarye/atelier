<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="static/js/jquery.columns.min.js"></script>
<link rel="stylesheet" href="static/css/classic.css">
<title>Art Work Atelier</title>
</head>
<body>
    <h1>Art Work Atelier</h1>

    <h2>Artist Image</h2>
    <div id="artist_image"></div>

    <h2>Album Art Work</h2>
    <div id="album_art"></div>
    <input type="hidden" id="result" value="{{result}}">

    <h2>Response from Gracenote</h2>
    <div id="columns"></div>

</body>
<script>
(function(global) {
    // eval to treat the search result as javascript object
    var json = eval("("+ $("#result").val() +")");

    // table-ize to know data structure
    $('#columns').columns({
      data:[json]
    });

    // show images
    $("#artist_image").append("<img src='" + json.artist_image_url + "' alt=''>");
    $("#album_art").append("<img src='" + json.album_art_url + "' alt=''>");

})((this || 0).self || global);
</script>
</html>
