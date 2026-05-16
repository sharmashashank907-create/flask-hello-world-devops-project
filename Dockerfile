FROM python:3.9-slim

LABEL maintainer="sharmashashank907@gmail.com"

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install pytest flake8

COPY app.py test.py .

EXPOSE 5000

CMD ["python", "app.py"]
