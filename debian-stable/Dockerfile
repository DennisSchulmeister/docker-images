FROM debian:stable-slim
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install apt-utils bash less nano ssmtp

# Note: E-Mail smarthost is 'mail' by default
# So run docker with --add-host mail:smarthost.domain
# and allow mail relay from docker0 network on the smarthost mail server.
# See: https://stackoverflow.com/a/30021595
RUN sed 's|#FromLineOverride=YES|FromLineOverride=YES|g' /etc/ssmtp/ssmtp.conf

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

COPY aliases /etc/
COPY bash.bashrc /etc/
COPY des-prompt.sh /etc/profile.d/

VOLUME /var/log

CMD /bin/bash
