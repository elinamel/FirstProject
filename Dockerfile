FROM centos:7

MAINTAINER elinam <elinam@forescout.com>

RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
ADD readme.txt /
# Define default command.
CMD ["bash"]

