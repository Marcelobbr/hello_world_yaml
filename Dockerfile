FROM python:3.6-slim
ENTRYPOINT ["python", "app.py"]
WORKDIR /deploy/
COPY ./requirements.txt /deploy/
RUN pip install -r requirements.txt
COPY ./app.py /deploy/