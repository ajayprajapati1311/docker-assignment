FROM python:3.11.0-alpine3.15
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]