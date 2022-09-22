FROM python:latest

WORKDIR /app

COPY . /app/

RUN ["requirments.sh","-c"]

EXPOSE 5000

CMD [ "python","app.py" ]
 