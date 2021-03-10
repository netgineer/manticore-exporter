# Manticore Exporter for Prometheus

A [manticore](http://manticoresearch.com) exporter for prometheus.

## Grafana Dashboards

* [Manticore Overview]

## Building

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

```

# HELP manticore_agent_connect Number of agent connect since server start.
# TYPE manticore_agent_connect counter
manticore_agent_connect 0
# HELP manticore_agent_retry Number of agent retry since server start.
# TYPE manticore_agent_retry counter
manticore_agent_retry 0
# HELP manticore_avg_dist_local Number of avg_dist_local since server start.
# TYPE manticore_avg_dist_local counter
manticore_avg_dist_local 0
# HELP manticore_avg_dist_wait Number of avg_dist_wait since server start.
# TYPE manticore_avg_dist_wait counter
manticore_avg_dist_wait 0
# HELP manticore_avg_dist_wall Number of avg_dist_wall since server start.
# TYPE manticore_avg_dist_wall counter
manticore_avg_dist_wall 0
# HELP manticore_avg_query_cpu Number of avg_query_cpu since server start.
# TYPE manticore_avg_query_cpu gauge
manticore_avg_query_cpu 0
# HELP manticore_avg_query_readkb Number of avg_query_readkb since server start.
# TYPE manticore_avg_query_readkb gauge
manticore_avg_query_readkb 0
# HELP manticore_avg_query_reads Number of avg_query_reads since server start.
# TYPE manticore_avg_query_reads gauge
manticore_avg_query_reads 0
# HELP manticore_avg_query_readtime Number of avg_query_readtime since server start.
# TYPE manticore_avg_query_readtime gauge
manticore_avg_query_readtime 0
# HELP manticore_avg_query_wall Number of avg_query_wall since server start.
# TYPE manticore_avg_query_wall counter
manticore_avg_query_wall 0
# HELP manticore_command_delete Number of delete command since server start.
# TYPE manticore_command_delete counter
manticore_command_delete 0
# HELP manticore_command_flushattrs Number of flushattrs command since server start.
# TYPE manticore_command_flushattrs counter
manticore_command_flushattrs 0
# HELP manticore_command_keywords Number of keywords command since server start.
# TYPE manticore_command_keywords counter
manticore_command_keywords 672
# HELP manticore_command_persist Number of persist command since server start.
# TYPE manticore_command_persist counter
manticore_command_persist 0
# HELP manticore_command_search Number of search command since server start.
# TYPE manticore_command_search counter
manticore_command_search 802
# HELP manticore_command_status Number of status command since server start.
# TYPE manticore_command_status counter
manticore_command_status 133
# HELP manticore_command_update Number of update command since server start.
# TYPE manticore_command_update counter
manticore_command_update 0
# HELP manticore_connections Number of connections since the server started.
# TYPE manticore_connections counter
manticore_connections 59691
# HELP manticore_dist_local Number of dist_local since server start.
# TYPE manticore_dist_local counter
manticore_dist_local 0
# HELP manticore_dist_queries Number of distributed queries since server start.
# TYPE manticore_dist_queries counter
manticore_dist_queries 0
# HELP manticore_dist_wait Number of dist_wait since server start.
# TYPE manticore_dist_wait counter
manticore_dist_wait 0
# HELP manticore_dist_wall Number of dist_wall since server start.
# TYPE manticore_dist_wall counter
manticore_dist_wall 0
# HELP manticore_maxed_out Number of max children barier since the server started.
# TYPE manticore_maxed_out counter
manticore_maxed_out 0
# HELP manticore_qcache_cached_queries Number of qcache_cached_queries since server start.
# TYPE manticore_qcache_cached_queries counter
manticore_qcache_cached_queries 0
# HELP manticore_qcache_max_bytes Number of qcache_max_bytes since server start.
# TYPE manticore_qcache_max_bytes counter
manticore_qcache_max_bytes 1.6777216e+07
# HELP manticore_qcache_thresh_msec Number of qcache_thresh_msec since server start.
# TYPE manticore_qcache_thresh_msec counter
manticore_qcache_thresh_msec 3000
# HELP manticore_qcache_ttl_sec Number of qcache_ttl_sec since server start.
# TYPE manticore_qcache_ttl_sec counter
manticore_qcache_ttl_sec 60
# HELP manticore_qcache_used_bytes Number of qcache_used_bytes since server start.
# TYPE manticore_qcache_used_bytes counter
manticore_qcache_used_bytes 0
# HELP manticore_queries Number of queries since server start.
# TYPE manticore_queries counter
manticore_queries 802
# HELP manticore_query_cpu Number of query_cpu since server start.
# TYPE manticore_query_cpu gauge
manticore_query_cpu 0
# HELP manticore_query_readkb Number of query_readkb since server start.
# TYPE manticore_query_readkb counter
manticore_query_readkb 0
# HELP manticore_query_reads Total number of KB read since server start.
# TYPE manticore_query_reads counter
manticore_query_reads 0
# HELP manticore_query_readtime Total time spent doing read operations (in seconds) since server start.
# TYPE manticore_query_readtime counter
manticore_query_readtime 0
# HELP manticore_query_wall Number of query_wall since server start.
# TYPE manticore_query_wall counter
manticore_query_wall 0.291
# HELP manticore_up Could the searchd server be reached.
# TYPE manticore_up gauge
manticore_up 1
# HELP manticore_uptime Number of seconds since the server started.
# TYPE manticore_uptime gauge
manticore_uptime 92852
# HELP manticore_index_count Number of indexes.
# TYPE manticore_index_count counter
manticore_index_count 10
# HELP manticore_threads_count Number of threads
# TYPE manticore_threads_count counter
manticore_threads_count{state="net_idle"} 7
manticore_threads_count{state="query"} 1
```
