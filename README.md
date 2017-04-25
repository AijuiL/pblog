# pblog
My blog is compile for Django framework + PostgreSQL database.<br>
PostgreSQL &amp; Django

# Basic function
The basic function support backend management : login and modify article;and sitelinks for development. <br>
Deploylink：http://aijuil.herokuapp.com/

# Running
Currently I am deploying on Heroku. If you want to running must be setting another local_settings.py in pblog folder. <br>

First you will install postgreSQL and create database "pblog" to your Django framework <br>

Please refer to the below url: <br>

https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-django-application-on-ubuntu-14-04 <br>

Tree pblog<br>

Treeset：https://goo.gl/1CYOYZ
            
Please refer to set local_settings.py to the below url: <br>

Setcode：https://goo.gl/1r4dbC <br>

running blog ： $ python manage.py runserver localhost(ip):8000 <br>

into backend management： http://localhost(ip):8000/admin <br>

# Install & Requirements

(ENV)$ git clone https://github.com/AijuiL/pblog.git

(ENV)$ cd pblog

(ENV)$ pip install -r 'requirements.txt'
