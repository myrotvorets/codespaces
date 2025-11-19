FROM jaegertracing/all-in-one:1.75.0@sha256:e493bff54e457ba5827f82418d744a322165cd5d46146607fb76489bfb2a8885
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
