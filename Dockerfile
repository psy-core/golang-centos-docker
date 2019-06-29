FROM centos:7

ADD ./go1.12.1.linux-amd64.tar.gz /opt
RUN mkdir /go && \
    yum install -y gcc

ENV GOROOT=/opt/go 
ENV PATH=$PATH:/opt/go/bin
ENV GOPATH=/go

CMD ["/bin/bash"]
