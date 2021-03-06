FROM dairyd/debian:stretch

LABEL maintainer="7of9@ydevops.com"

ENV REFRESHED_AT 2020-04-18

RUN set -ex; \
	if ! command -v gpg > /dev/null; then \
		apt-get update; \
		apt-get install -y --no-install-recommends gnupg dirmngr; \
		rm -rf /var/lib/apt/lists/*; fi
