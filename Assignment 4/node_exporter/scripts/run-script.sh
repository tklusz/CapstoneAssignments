# Running prometheus server
cd prometheus-2.8.0.linux-amd64
./prometheus --config.file=prometheus.yml &

# Running node_exporter
cd ..
cd node_exporter-0.17.0.linux-amd64
./node_exporter
