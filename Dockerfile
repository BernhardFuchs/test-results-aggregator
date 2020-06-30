FROM ubuntu:20.10

LABEL "com.github.actions.name"="Test Results Aggregator"
LABEL "com.github.actions.description"="Aggregate test result for Universal Resolver"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"
LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/BernhardFuchs/test-results-aggregator"
LABEL "homepage"="https://uniresolver.io"
LABEL "maintainer"="Bernhard Fuchs <bernhard.fuchs@danubetech.com>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install git -y

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]