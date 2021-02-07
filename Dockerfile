FROM alpine:3.5

ENV PATH=/opt/google-cloud-sdk/bin:$PATH

RUN apk --update --no-cache add python curl jq && \
    \
    mkdir /opt && cd /opt && \
    curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-175.0.0-linux-x86_64.tar.gz | tar xz && \
    \
    cd /opt/google-cloud-sdk/ && ./install.sh --quiet \
      --usage-reporting false \
      --additional-components \
          docker-credential-gcr \
          kubectl \
          beta && \
    \
    rm -rf /tmp/*
