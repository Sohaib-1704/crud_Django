FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /Crud_Django

WORKDIR /Crud_Django

ADD . /Crud_Django/

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

VOLUME /Crud_Django

EXPOSE 8080

CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8080