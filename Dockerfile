FROM python:3.9.2

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
