FROM python:3.8-buster

ENV PYTHONPATH "/app"

RUN apt-get update && \
    apt-get install build-essential && \
    apt-get install entr

COPY pyproject.toml .
COPY .bashrc /root/.
COPY pytest.ini .

RUN pip install -U pip poetry && \
    poetry install

RUN mkdir app && mkdir tests

CMD bash
