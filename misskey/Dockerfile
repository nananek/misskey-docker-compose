FROM ghcr.io/nananek/misskey:latest AS frontend

FROM ghcr.io/shiroha-a/mk:latest

COPY --from=frontend /misskey/built /misskey/built
COPY --from=frontend /misskey/packages/backend/node_modules/@discordapp/twemoji/dist/svg /misskey/twemoji
COPY --from=frontend /misskey/packages/frontend/assets /misskey/client_assets
COPY --from=frontend /misskey/packages/backend/assets /misskey/static

ENV MISSKEY_FRONTEND_DIR=/misskey/built/_frontend_vite_ \
    MISSKEY_FRONTEND_DIST_DIR=/misskey/built/_frontend_dist_ \
    MISSKEY_TWEMOJI_DIR=/misskey/twemoji \
    MISSKEY_CLIENT_ASSETS_DIR=/misskey/client_assets \
    MISSKEY_STATIC_DIR=/misskey/static
