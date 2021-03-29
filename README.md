# ManticoreSearch Exporter for Prometheus

[Manticore](http://manticoresearch.com) exporter for Prometheus.
Based on the [sphinxsearch exporter](https://github.com/foxdalas/sphinx_exporter) by [Maxim Pogozhiy](https://github.com/foxdalas/)


## Build

The manticore exporter exports metrics from a manticore server for
consumption by prometheus. The server is specified as `--manticore.address` and `--manticore.port` flag
to the program (default is `localhost:9306`).

By default the manticore\_exporter serves on port `0.0.0.0:9247` at `/metrics`

```
make
./manticore_exporter
```
Alternatively a Dockerfile is supplied

```
docker build -t manticore_exporter .
docker run -p 9247:9247 manticore_exporter
```

Full

```
docker run -d --name manticore_exporter \
-p 9247:9247 manticore_exporter:latest \
--manticore.address=localhost \
--manticore.port=9306 \
--manticore.timeout=1s \
--web.listen-address=:9247 \
--web.telemetry-path=/metrics
```

### Pre-build binaries

For pre-built binaries please take a look at [the releases](https://github.com/netgineer/manticore-exporter/releases).


### Basic Prometheus Configuration

Add a block to the `scrape_configs` of your prometheus.yml config file:

```yaml
scrape_configs:
  - job_name: manticore_exporter
    static_configs:
    - targets: ['<<MANTICORE-EXPORTER-HOSTNAME>>:9247']
```

and adjust the host name accordingly.

## Collectors

The exporter collects a number of statistics from the server:

https://manual.manticoresearch.com/Profiling_and_monitoring/Node_status#SHOW-STATUS

https://manual.manticoresearch.com/Profiling_and_monitoring/Index_settings_and_status/SHOW_INDEX_STATUS#SHOW-INDEX-STATUS

## Cluster metrics

Node states and status are converted from strings to numerical values according to the table

| manticore   | exporter  |
| ----------- |---|
| closed      | 0 |
| destroyed   | 1 |
| joining     | 2 |
| donor       | 3 |
| synced      | 4 |
|             |
| primary     | 0 |
| non-primary | 1 |
