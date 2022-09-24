##### Build Stage
FROM python:3.11-rc-alpine AS build


SHELL ["/bin/sh","-c"]		


WORKDIR /app

COPY . /app/

RUN ["pip","install","flask"]

EXPOSE 5000

RUN groupadd  pythonapp && useradd -g pythonapp 7sen


RUN chown -R  7sen:pythonapp /app
USER 7sen 


CMD [ "python","app.py" ]

#ENTRYPOINT [   "/bin/bash",   "-c","FLASK_APP=/app/app.py flask run --host=0.0.0.0"]




