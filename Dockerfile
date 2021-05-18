FROM ghcr.io/linuxserver/baseimage-mono:focal

# set version label
ARG BUILD_DATE
ARG VERSION
ARG VS_VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="dr3st"

RUN	apt-get update && apt-get install -y curl wget screen procps && \
	cd /tmp && \
	wget https://account.vintagestory.at/files/stable/vs_archive_${VS_VERSION}.tar.gz  && \
	tar xfz /tmp/vs_archive_${VS_VERSION}.tar.gz && \
	mv /tmp/vintagestory /server

# add local files
COPY root/ /

# ports and volumes
EXPOSE 42420
VOLUME /data
