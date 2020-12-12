FROM python:3.7-stretch

COPY . /app
WORKDIR /app
COPY ./requirements.txt /var/www/requirements.txt

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install -r /var/www/requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

