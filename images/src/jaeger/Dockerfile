FROM jaegertracing/all-in-one:1.60.0@sha256:4fd2d70fa347d6a47e79fcb06b1c177e6079f92cba88b083153d56263082135e
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
