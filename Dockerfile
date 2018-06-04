FROM centos:7
MAINTAINER Luca Corsini <lcorsini@gmail.com>

COPY ["conf/collectd.conf", "/etc/"]

RUN yum -y install epel-release && yum -y install collectd collectd-write_prometheus

# Add in startup script
COPY ["run.sh", "/run/"]

# Make run script executable
RUN chmod +x /run/run.sh

# Set the shell as the entry point
ENTRYPOINT /run/run.sh
