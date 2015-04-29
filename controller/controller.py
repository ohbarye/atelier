import os
from bottle import run, get, post, request, static_file, view, template
import bottle
from model import gracenote

app = bottle.app()

@app.route('/',method=['GET'])
def index():
    return template('index')

@app.route('/search',method=['POST'])
def search():
    artist = request.forms.get("artist")
    album  = request.forms.get("album")
    print artist,album
    result = gracenote.search(artist,album)
    return template('result', result=result)

@app.route('/static/<filepath:path>', name='static_file')
def static(filepath):
    return static_file(filepath, root="./views")

def run():
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
#    app.run(host='localhost', port=8080, debug=True, reloader=True)
