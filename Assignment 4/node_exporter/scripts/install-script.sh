# Updating, getting wget.
apt-get update
apt-get install -y wget

# Getting Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.8.0/prometheus-2.8.0.linux-amd64.tar.gz
tar xvfz prometheus-2.8.0.linux-amd64.tar.gz

# Getting node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v0.17.0/node_exporter-0.17.0.linux-amd64.tar.gz
tar xvfz node_exporter-0.17.0.linux-amd64.tar.gz
