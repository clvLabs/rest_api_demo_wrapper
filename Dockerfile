FROM python:3

RUN \
    apt update && \
    apt -y upgrade && \
    true

COPY repo /app
COPY resources /app/resources

RUN pip install -r /app/requirements.txt

WORKDIR /app
ENTRYPOINT ["/app/resources/scripts/start-demo.sh"]
