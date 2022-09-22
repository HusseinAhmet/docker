FROM python:latest

SHELL ["/bin/bash","-c"]		


WORKDIR /app

COPY . /app/

RUN ["bash","requirments.sh"]

EXPOSE 5000

CMD [ "python","app.py" ]
 