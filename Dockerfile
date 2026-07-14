FROM alpine:3.5

ADD docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["start"]