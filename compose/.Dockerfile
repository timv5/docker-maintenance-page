FROM busybox
COPY html/index.html docker-entrypoint.sh /
ENV SITE_CONTENT="Sorry for the inconvenience. Site is currently under maintenance and will be back in a couple of minutes. We will be back up shortly!"
ENV SITE_HEADER="Maintenance undergoing"
ENV SITE_TITLE="Maintenance"
ENV PORT=8080
ENV RESPONSE_CODE="503 Service Unavailable"
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]