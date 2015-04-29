import os

clientID = os.getenv("CLIENT_ID")
userID   = os.getenv("USER_ID")

if not clientID:
    clientID = ''

if not userID:
    userID = ''
