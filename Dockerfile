FROM openshift/jenkins-slave-base-centos7:v3.11

RUN yum install -y java-11
RUN alternatives --set java /usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64/bin/java

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && \
mv ./kubectl /usr/local/bin/kubectl

RUN wget -O "https://get.helm.sh/helm-v3.3.1-linux-amd64.tar.gz" && \
tar xzvf helm-v3.3.1-linux-amd64.tar.gz && \
mv linux-amd64/helm /usr/local/bin/helm
