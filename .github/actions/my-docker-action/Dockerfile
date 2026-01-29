FROM docker:20.10.16
 
RUN apk add --no-cache bash
 
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
 
ENTRYPOINT ["/entrypoint.sh"]
