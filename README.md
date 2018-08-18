# Building

`docker build -t <image_name> --build-arg ACCESS_KEY_ID=<value> --build-arg SECRET_ACCESS_KEY=<value> --build-arg AWS_REGION=<value> --no-cache .`

# Using

`docker run -v `pwd`:/cli -it <image_name> bash`
`docker run -v `pwd`:/cli -it <image_name> aws s3 ls`