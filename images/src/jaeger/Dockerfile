FROM jaegertracing/all-in-one:1.67.0@sha256:34e3d18e0f2eeb9abd9bb53d0dc7abaf2a5b1c884fdca575093af3126811a9d3
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
