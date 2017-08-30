FROM jenkinsci/jnlp-slave

# File Author / Maintainer
MAINTAINER Jorge Acetozi

ENV KUBECTL_VERSION=v1.7.0

USER root

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl

USER jenkins
