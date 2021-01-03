#!/bin/bash 
set -x

# Pythonise Tutorial:
# Flask & the Fetch API (AJAX?) - Python on the web - Learning Flask Series Pt. 10
open -a "Google Chrome" https://www.youtube.com/watch?v=QKcVjdLEX_s

# open Flask app (tutorial)
open -a "Google Chrome" http://127.0.0.1:5000

# to test our JSON we use
# open -a "Postman"

# DEV start (if manual):
# in this folder (/Users/peter/GitHub/flasktutorial)
# right click in this folder space & select "Open in Terminal)

# move to correct folder
cd /Users/peter/GitHub/flasktutorial/app/app

# activate the environment:
source venv/bin/activate

# start visual code
code /Users/peter/GitHub/flasktutorial/app

# check environment variables
printenv 

# add flask environment variables
export FLASK_APP=app.py
export FLASK_ENV=development

# run our flask app server
flask run

# stop server
# press ctrl + c

# quit virtual env
# deactivate