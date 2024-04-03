FROM jaegertracing/all-in-one:1.56.0@sha256:d2cd4c226624bdc116decd3106091b4df9882da8db42f8550293596cab79b8ea
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
