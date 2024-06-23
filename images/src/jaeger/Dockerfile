FROM jaegertracing/all-in-one:1.58.1@sha256:f015fb34e6742bb46b87c42cf83abfacfdd5dc39864a859a4ba942eb21c4b29c
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
