FROM python:3.6-slim
ENTRYPOINT ["python", "main.py"]
WORKDIR /deploy/
COPY ./requirements.txt /deploy/
RUN pip install -r requirements.txt
COPY ./main.py /deploy/