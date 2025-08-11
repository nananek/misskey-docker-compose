FROM misskey/misskey:2025.7.0

USER root

RUN mkdir -p /var/run/misskey
RUN chmod +x /var/run/misskey
RUN chown -R misskey /var/run/misskey

USER misskey
