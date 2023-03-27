FROM alpine
RUN apk --no-cache add curl ca-certificates gettext \
  && curl -Ls https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 > /usr/bin/jq && chmod +x /usr/bin/jq
# JEFF ADDED - ADD ABILITY TO USE /bin/bash 
RUN apk add --update bash
ADD bin /opt/resource
