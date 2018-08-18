FROM python:latest

ARG ACCESS_KEY_ID
ARG SECRET_ACCESS_KEY
ARG AWS_REGION

RUN mkdir -p /cli
ADD . /cli
WORKDIR /cli

RUN /cli/setup_credentials.sh

RUN pip install awscli --upgrade

CMD bash