#!/bin/bash

mkdir ~/.aws
cat <<EOF > ~/.aws/credentials
[default]
aws_access_key_id = $ACCESS_KEY_ID
aws_secret_access_key = $SECRET_ACCESS_KEY
EOF

cat <<EOF > ~/.aws/config
[default]
region = $AWS_REGION
EOF