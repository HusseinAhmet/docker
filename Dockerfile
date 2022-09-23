FROM python:latest

SHELL ["/bin/bash","-c"]		


WORKDIR /app

COPY . /app/
 

RUN ["pip","install","flask"]

EXPOSE 5000

#ENTRYPOINT [   "/bin/bash",   "-c","FLASK_APP=/app/app.py flask run --host=0.0.0.0"]

CMD [ "python","app.py" ]
            