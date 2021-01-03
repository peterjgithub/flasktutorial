#!/bin/bash 
set -x

# Pythonise Tutorial:
# JSON with Flask - Python on the web - Learning Flask Series Pt. 9
open -a "Google Chrome" https://www.youtube.com/watch?v=VzBtoA_8qm4&list=PLF2JzgCW6-YY_TZCmBrbOpgx5pSNBD0_L&index=9


# open Flask app (tutorial)
open -a "Google Chrome" http://127.0.0.1:5000

# to test our JSON we use
open -a "Postman"

# DEV start (if manual):
# in this folder (/Users/peter/GitHub/flasktutorial)
# right click in this folder space & select "Open in Terminal)

# move to correct folder
cd /Users/peter/GitHub/flasktutorial/app

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