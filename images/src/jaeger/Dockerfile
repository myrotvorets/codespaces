FROM jaegertracing/all-in-one:1.52.0@sha256:7885400a153ac908d8bfbf72c27e3389dbab1942a35dd0ce3228611dc48cbf9f
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
