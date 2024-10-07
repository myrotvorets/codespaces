FROM jaegertracing/all-in-one:1.62.0@sha256:836e9b69c88afbedf7683ea7162e179de63b1f981662e83f5ebb68badadc710f
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
