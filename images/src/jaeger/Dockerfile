FROM jaegertracing/all-in-one:1.54.0@sha256:f4044964505c81bf12131c2dfd1f4ddf1d1421bbbd9d79f691221cac077599a8
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
