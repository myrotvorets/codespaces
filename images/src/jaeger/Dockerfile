FROM jaegertracing/all-in-one:1.74.0@sha256:c87fc1d9b22766284168abb2ac57ac2160dfc26484e4f965ff2dcc6b849b263a
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
