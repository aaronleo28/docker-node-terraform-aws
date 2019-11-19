FROM node:11-alpine

RUN apk add --no-cache \
  python \
  py-pip \
  py-setuptools \
  bash \
  git \
  zip && \
  pip install --no-cache-dir --upgrade pip awscli

ENV TERRAFORM_VERSION 0.12.12

RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform.zip -d /usr/local/bin && \
  rm -f terraform.zip

ENTRYPOINT ["/bin/bash", "-c"]
