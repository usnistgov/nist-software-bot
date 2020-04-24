FROM python:3.7.5-slim

ARG GITHUB_API_TOKEN

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y cloc && \
    apt-get autoremove

RUN mkdir /nist-software-bot
COPY . /nist-software-bot

WORKDIR /nist-software-bot

RUN pip install -r scripts/requirements.txt

RUN chmod a+rwx -R /nist-software-bot

ENTRYPOINT ["/nist-software-bot/entrypoint.sh"]
