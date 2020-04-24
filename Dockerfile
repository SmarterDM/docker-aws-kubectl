FROM docker:19.03.6-dind

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make gettext curl
RUN pip install docker-compose awscli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
