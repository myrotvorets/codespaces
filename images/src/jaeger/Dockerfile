FROM jaegertracing/all-in-one:1.72.0@sha256:144b7028db6045b28b50c4728dd3bea14fa76ab024b64afeccec51c8cb1edd63
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
