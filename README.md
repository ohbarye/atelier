# Art Work Atelier
A gallery of cover arts: illustration or photograph on the outside of a published product.

## Install

```bash
$ git clone https://github.com/ohbarye/atelier.git
$ cd atelier
$ pyenv virtualenv 2.7.9 atelier # optional
$ pyenv local atelier            # optional
$ pip install -r requirements.txt
```

## Add Gracenote API key

Edit `resources/env.py`'s `clientID` and `userID` for developement.

```python:env.py
import os

# default keys are taken from environment variables
clientID = os.getenv("CLIENT_ID")
userID   = os.getenv("USER_ID")

# for developement
if not clientID:
    clientID = 'YOUR API KEY'

if not userID:
    userID = 'YOUR API KEY'
```


## Start server

```bash
$ python startup.py
$ open http://localhost:5000/
```
