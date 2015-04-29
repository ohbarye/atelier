from resources import env
from lib import pygn
import json

def search(artist,album):
    metadata = pygn.search(clientID=env.clientID, userID=env.userID, artist=artist, album=album)
    return json.dumps(metadata)

if __name__ == "__main__":
    search()
