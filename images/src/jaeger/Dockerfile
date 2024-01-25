FROM jaegertracing/all-in-one:1.53.0@sha256:60e65bfffe1f66aee96d6fc8b6bf65afd42016be5dcc09d2e15d8462f7d9409c
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
