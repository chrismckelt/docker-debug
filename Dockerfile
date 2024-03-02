# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:jammy-1.0.2

# Use baseimage-docker's init system.

RUN apt update
RUN apt -y upgrade
RUN apt -y install wget curl dnsutils netcat openssl telnet

RUN apt -y install ca-certificates

COPY . .

CMD ["/sbin/my_init"]

