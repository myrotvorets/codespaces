FROM jaegertracing/all-in-one:1.73.0@sha256:fe884668a2bf8d586b6fb7697d48a6a19a02f9e78a1eddf09c5b0f08c27d63b9
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
