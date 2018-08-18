#!/bin/bash

set -ex

STACK_NAME=$1
REGION=us-east-1

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://`pwd`/templates/$1/stack.yml \
  --parameters file://`pwd`/templates/$1/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $REGION \
  --disable-rollback

aws cloudformation wait stack-create-complete \
  --stack-name $STACK_NAME \
  --region $REGION
