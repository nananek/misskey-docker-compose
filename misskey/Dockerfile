FROM misskey/misskey:latest

USER root

RUN mkdir -p /var/run/misskey
RUN chmod +x /var/run/misskey
RUN chown -R misskey /var/run/misskey

USER misskey