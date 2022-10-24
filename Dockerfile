FROM python:3.9.2

COPY hello_world.py .

CMD [ "python3", "hello_world.py"]
