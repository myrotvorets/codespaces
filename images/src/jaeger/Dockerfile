FROM jaegertracing/all-in-one:1.50.0@sha256:d589499a01e1e2f9d302db8e210af09688076fd8a93278fa024824a755c1a0f1
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
