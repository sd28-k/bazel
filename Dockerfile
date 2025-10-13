# Dockerfile
FROM alpine:3.19
WORKDIR /app

# Copy the Bazel-built binary (or hello.sh)
COPY bazel-bin/src/hello /app/hello

RUN chmod +x /app/hello

ENTRYPOINT ["/app/hello"]
