<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Art Work Atelier</title>
</head>
<body>
    <h1>Art Work Atelier</h1>
    <div id="message">
        Hello! Let's search your favorite album art work.<br />
        Input any artist name and album title (e.g. "The Beatles" and "Abbey Road"), and click below search button.
    </div>
    <form method="POST" action="/search">
        <input type="text" id="artist" name="artist" placeholder="artist name">
        <input type="text" id="album" name="album" placeholder="album title">
        <input type="submit" id="search" value="search">
    </form>
    <div><a href="https://github.com/ohbarye/atelier">https://github.com/ohbarye/atelier</a></div>
</body>
</html>
