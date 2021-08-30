FROM python:3.8-slim-buster

WORKDIR /app

COPY requirments.txt requirments.txt
RUN pip3 install -r requirments.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]

