FROM jaegertracing/all-in-one:1.71.0@sha256:beb31282a9c5d0d10cb78dd168945dab9887acebb42fcc0bd738b08c36b68bc0
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
