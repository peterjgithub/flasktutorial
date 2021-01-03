#!/bin/bash 
set -x

# Pythonise Tutorial:
# Forms with Flask - Python on the web - Learning Flask Series Pt 7
open -a "Google Chrome" https://www.youtube.com/watch?v=ap2vxzAZVIg&list=PLF2JzgCW6-YY_TZCmBrbOpgx5pSNBD0_L&index=7

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

# test: open new Terminal window in app folder
new /Users/peter/GitHub/flasktutorial/app

# run our flask app server
flask run

# open Flask app (tutorial)
open -a "Google Chrome" http://127.0.0.1:5000

# stop server
# press ctrl + c

# quit virtual env
# deactivate