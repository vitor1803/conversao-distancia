FROM python:3.12

WORKDIR /home/app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app .

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]