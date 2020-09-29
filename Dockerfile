FROM python:3

COPY app.py /

EXPOSE 8000

CMD [ "python", "./app.py" ]
