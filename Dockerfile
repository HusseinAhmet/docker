FROM python:latest

SHELL ["/bin/bash","-c"]		


WORKDIR /app

COPY . /app/

RUN ["./requirments.sh","bash"]

EXPOSE 5000

CMD [ "python","app.py" ]
 