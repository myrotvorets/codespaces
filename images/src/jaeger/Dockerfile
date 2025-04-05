FROM jaegertracing/all-in-one:1.68.0@sha256:6279882637ae03e70f519965d2ba5ca84cb785f4baf4f0d7237e827a37c33a42
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
