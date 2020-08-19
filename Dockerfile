# 1. Base OS Image
FROM centos:7
# 2. Copy blockchain client
ADD tdcoin /app
# 3. Setup directory
WORKDIR /app/bin
# 4. Make permissions
RUN chmod +x /app/bin/tdcoind
# 5. Add client.conf file
COPY tdcoin/tdcoin.conf /app/tdcoin.conf
# 6. Entrypoint
ENTRYPOINT ["/app/bin/tdcoind", "-conf=/app/tdcoin.conf"]
