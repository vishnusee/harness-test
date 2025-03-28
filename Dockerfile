# website::tag::1:: Build a simple Docker image that contains a text file with the contents "Hello, World!"
FROM ubuntu:latest
RUN echo 'Hello, World!' > /test.txt
