from app import app

from flask import render_template, request, redirect

from datetime import datetime


@app.template_filter("clean_date")
def clean_date(dt):
    return dt.strftime("%d %b %Y")


@app.route("/")
def index():
    return render_template("public/index.html")


@app.route("/jinja")
def jinja():

    my_name = "Peter"

    age = 48

    langs = ["Python", "JavaScript", "Bash", "C", "Ruby"]

    friends = {
        "Tom": 30,
        "Amy": 60,
        "Tony": 56,
        "Clarissa": 23
    }

    cool = True

    colours = ("Red", "Green")

    class GitRemote:
        def __init__(self, name, description, url):
            self.name = name
            self.description = description
            self.url = url

        def pull(self):
            return f"Pullin repo {self.name}"

        def clone(self):
            return f"Cloning into {self.url}"

    my_remote = GitRemote(
        name="Flask Jinja",
        description="Template design tutorial",
        url="https://github.com/pj/jinja.git"
    )

    def repeat(x, qty):
        return x * qty

    date = datetime.utcnow()

    my_html = "<h1>THIS IS MY HTML</h1>"

    suspicious = "<script>alert('joke: YOU GOT HACKED')</script>"

    return render_template(
        "public/jinja.html", my_name=my_name, age=age,
        langs=langs, friends=friends, colours=colours,
        cool=cool, GitRemote=GitRemote, repeat=repeat,
        my_remote=my_remote, date=date, my_html=my_html,
        suspicious=suspicious
    )


@app.route("/about/")
def about():
    return render_template("public/about.html")


@app.route("/sign-up", methods=["GET", "POST"])
def sign_up():

    if request.method == "POST":

        req = request.form

        # 3 ways to access form data:
        username = req["username"]
        email = req.get("email")
        password = request.form["password"]

        print(username, email, password)

    return render_template('public/signup.html')

users = {
    "mitsuhiko" : {
        "name": "Armin Ronacher",
        "bio": "Creator of the Flask Framework",
        "twitter_handle": "@mitchuhiko"
    },
        "gvanrossum" : {
        "name": "Guido Van Rossum",
        "bio": "Creator of the Python programming language",
        "twitter_handle": "@gvanrossum"
    },
        "elonmusk" : {
        "name": "Elon Musk",
        "bio": "technology entrepreneur, investor and engineer",
        "twitter_handle": "@elonmusk"
    }
}

@app.route('/profile/<username>')
def profile(username):

    user = None

    if username in users:
        user = users[username]

    return render_template('public/profile.html', username=username, user=user)

@app.route('/multiple/<foo>/<bar>/<baz>')
def multi(foo, bar, baz):
    return f"foo is {foo}, bar is {bar}, baz is {baz}"