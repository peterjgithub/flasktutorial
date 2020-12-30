#!/bin/bash 
set -x

# assumption that runserver.py is in the Rock folder
mkdir ~/app
cd ~/app

# create out Python virtual environment
python3 -m venv env

# activate the environment:
source env/bin/activate

# Updating pip
pip install --upgrade pip
# Collecting pip
#   Using cached https://files.pythonhosted.org/packages/54/eb/4a3642e971f404d69d4f6fa3885559d67562801b99d7592487f1ecc4e017/pip-20.3.3-py2.py3-none-any.whl
# Installing collected packages: pip
#   Found existing installation: pip 19.2.3
#     Uninstalling pip-19.2.3:
#       Successfully uninstalled pip-19.2.3
# Successfully installed pip-20.3.3

# Installing Flask
pip install -U flask

pip list
# Package      Version
# ------------ -------
# click        7.1.2
# Flask        1.1.2
# itsdangerous 1.1.0
# Jinja2       2.11.2
# MarkupSafe   1.1.1
# pip          20.3.3
# setuptools   41.2.0
# Werkzeug     1.0.1

# Creating a Flask app
touch app.py