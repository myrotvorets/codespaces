FROM jaegertracing/all-in-one:1.69.0@sha256:82505210a99b18f587c94f40120c2e13ef3a6ac3095eebdb9e9cba9bf5839efd
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
