FROM clickable/ubuntu-sdk:15.04-amd64
RUN echo set debconf/frontend Noninteractive | debconf-communicate && echo set debconf/priority critical | debconf-communicate
RUN apt-get update && apt-get install -y --force-yes --no-install-recommends  libpam0g-dev && apt-get clean