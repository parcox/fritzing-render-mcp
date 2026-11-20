FROM ghcr.io/leonfedotov/fritzing-render:latest
RUN npm install -g supergateway
ENV FRITZING_PARTS=/custom:/opt/fritzing-render/vendor/fritzing-parts:/opt/fritzing-render/vendor/adafruit-parts:/opt/fritzing-render/vendor/sparkfun-parts:/opt/fritzing-render/vendor/mgesteiro-parts:/opt/fritzing-render/vendor/dip-ic-parts:/opt/fritzing-render/vendor/elegoo-parts:/opt/fritzing-render/vendor/mkjanke-parts:/opt/fritzing-render/vendor/community-parts:/opt/fritzing-render/libraries/fritzing-parts-extra
EXPOSE 8000
USER 1000:1000
ENTRYPOINT []
CMD ["supergateway","--stdio","node /opt/fritzing-render/mcp/src/server.ts","--outputTransport","streamableHttp","--port","8000"]
