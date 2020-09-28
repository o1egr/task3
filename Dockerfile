FROM python:3

COPY app.py /

EXPOSE 80

CMD [ "python", "./app.py" ]
