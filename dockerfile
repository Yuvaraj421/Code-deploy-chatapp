FROM python:3.6.7
MAINTAINER Yuvaraj
ENV PYTHONUNBUFFERED=1
RUN apt-get update -y
RUN pip install --upgrade pip
COPY ./chatapp /chatapp
WORKDIR /chatapp
RUN pip3 install django
RUN pip3 install gunicorn
RUN pip3 install channels
RUN pip3 install psycopg2
RUN pip3 install psycopg2-binary
RUN pip3 install django-environ
RUN pip3 install -r requirement.txt
CMD python3 manage.py migrate
CMD gunicorn --bind 0.0.0.0:8000 chatapplication.wsgi:application
EXPOSE 8000
