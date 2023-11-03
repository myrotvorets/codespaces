FROM jaegertracing/all-in-one:1.51.0@sha256:cb0749c3f455fc19f490ada07b5de5c3611dca62280d86f321cdc4eb09b0ed57
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
