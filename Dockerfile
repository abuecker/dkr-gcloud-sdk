FROM alpine:3.5

ADD https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-167.0.0-linux-x86_64.tar.gz /opt

ENV PATH=/opt/google-cloud-sdk/bin:$PATH

RUN apk --update --no-cache add python && \

    cd /opt/google-cloud-sdk/ && ./install.sh --quiet \
      --usage-reporting false \
      --additional-components \
        docker-credential-gcr \
        kubectl
