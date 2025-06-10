FROM jaegertracing/all-in-one:1.70.0@sha256:c73bec5e6220b91eeda2574ec6aabbb8232f531e6b0bd11819f53548eefa6424
USER root
RUN  install -d -m 0755 -o 10001 /badger /badger/data /badger/key
USER 10001
ENV SPAN_STORAGE_TYPE badger
ENV BADGER_EPHEMERAL false
ENV BADGER_DIRECTORY_VALUE /badger/data
ENV BADGER_DIRECTORY_KEY /badger/key
