#!/bin/bash 
set -x

# Pythonise Tutorial:
# Jinja template design | Learning Flask Ep. 6
open -a "Google Chrome" https://pythonise.com/series/learning-flask/jinja-template-design
open -a "Google Chrome" https://www.youtube.com/watch?v=mqrbF0qGSLI&list=PLF2JzgCW6-YY_TZCmBrbOpgx5pSNBD0_L&index=6

# DEV start (if manual):
# in this folder (/Users/peter/GitHub/flasktutorial)
# right click in this folder space & select "Open in Terminal)

# move to correct folder
cd /Users/peter/GitHub/flasktutorial/app

# activate the environment:
source venv/bin/activate

# start visual code
code .

# check environment variables
printenv 

# add flask environment variables
export FLASK_APP=app.py
export FLASK_ENV=development

# test: open new Terminal window in app folder
new /Users/peter/GitHub/flasktutorial/app

# run our flask app server
flask run

# stop server
# press ctrl + c

# quit virtual env
# deactivate