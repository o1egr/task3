FROM python:3

ADD app.py /

RUN pip install

CMD [ "python", "./app.py" ]
