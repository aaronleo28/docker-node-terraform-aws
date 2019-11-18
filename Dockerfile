FROM node:11-alpine

RUN apk add --no-cache \
  bash \
  git \
  zip 

ENV TERRAFORM_VERSION 0.12.10

RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform.zip -d /usr/local/bin && \
  rm -f terraform.zip

ENTRYPOINT ["/bin/bash", "-c"]
