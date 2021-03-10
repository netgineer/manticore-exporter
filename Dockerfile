FROM        quay.io/prometheus/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY manticore_exporter /bin/manticore_exporter

ENTRYPOINT ["/bin/manticore_exporter"]
EXPOSE     9247
