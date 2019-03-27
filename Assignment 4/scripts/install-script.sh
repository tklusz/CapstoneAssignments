# Updating, installing wget
apt-get update
apt-get install -y wget

# Getting Prometheus 2.8 from GitHub, unzipping, moving to directory.
wget https://github.com/prometheus/prometheus/releases/download/v2.8.0/prometheus-2.8.0.linux-amd64.tar.gz
tar xvfz prometheus-2.8.0.linux-amd64.tar.gz
