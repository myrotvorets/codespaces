FROM jaegertracing/all-in-one:1.58.0@sha256:1f6ee90a3f487dfd5e7430aaace16a83b55251d2c5493b14c1744d29f933fedd
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
