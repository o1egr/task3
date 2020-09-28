FROM python:3

COPY app.py /

EXPOSE 1020

CMD [ "python", "./app.py" ]
