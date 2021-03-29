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
