FROM ghcr.io/nananek/misskey:latest AS frontend

FROM ghcr.io/shiroha-a/mk:latest

COPY --from=frontend /misskey/built /misskey/built
COPY --from=frontend /misskey/packages/frontend/assets /misskey/client_assets
COPY --from=frontend /misskey/scripts/docker-start.js /misskey/scripts/docker-start.js
COPY --from=frontend /misskey/healthcheck.js /misskey/healthcheck.js

ENV MISSKEY_FRONTEND_DIR=/misskey/built/_frontend_vite_ \
    MISSKEY_FRONTEND_DIST_DIR=/misskey/built/_frontend_dist_ \
    MISSKEY_SW_DIST_DIR=/misskey/built/_sw_dist_ \
    MISSKEY_CLIENT_ASSETS_DIR=/misskey/client_assets

HEALTHCHECK --interval=5s --retries=20 CMD ["/nodejs/bin/node", "/misskey/healthcheck.js"]
CMD ["/nodejs/bin/node", "/misskey/scripts/docker-start.js"]
