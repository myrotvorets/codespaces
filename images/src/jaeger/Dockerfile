FROM jaegertracing/all-in-one:1.66.0@sha256:9864182b4e01350fcc64631bdba5f4085f87daae9d477a04c25d9cb362e787a9
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
