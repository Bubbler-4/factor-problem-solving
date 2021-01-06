FROM bubbler9903/factor-gitpod:latest

USER root
RUN apt-get update -y -q \
  && apt-get install -y -q --no-install-recommends netpbm

USER gitpod