FROM python:3-alpine
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install --requirement requirements.txt
COPY app.py .
CMD ["python3", "./app.py"]
