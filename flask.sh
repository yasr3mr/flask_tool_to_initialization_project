#!/bin/sh
#main
projectname=""
echo "enter project name: "
read projectname
mkdir $projectname
cd $projectname
#-----------------
mkdir templates
mkdir static
touch app.py
echo "from flask import Flask,render_template

app=Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

if __name__==\"__main__\":

	app.run(debug=True)
">app.py
#-----------------
cd static 
mkdir js
mkdir css
mkdir images
cd css 
touch style.css
cd ..
cd ..
#------------------------------------------------------
cd templates
mkdir includes
touch layout.html
echo "<!DOCTYPE html>
<html lang="en">
<head>
	<title>
		{% block title %}
		Layout
		{% endblock title %}

	</title>
</head>
<body>
{% block content %}
	content 
{% endblock content %}
</body>
</html>">layout.html
#--------------------------------------------------------
touch index.html
echo "{% extends \"layout.html\" %}

{% block title %}
	Home
{% endblock title %}
{% block content %}
	content.....
{% endblock content %}" >index.html
cd ..
#---------------------------------------------------------
echo "Created By Yasser Omar"

