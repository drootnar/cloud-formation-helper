FROM python:latest

ARG ACCESS_KEY_ID
ARG SECRET_ACCESS_KEY
ARG AWS_REGION

RUN mkdir -p /cli
ADD . /cli
WORKDIR /cli

ENV PATH="/cli/executable:${PATH}"

RUN setup_credentials
RUN pip install boto3 awscli --upgrade

CMD bash