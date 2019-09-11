FROM python:3.5.7

ENV PYTHONNUNBUFFERED 1

RUN apt update -y
RUN apt install -y python3-dev

WORKDIR /home

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root

