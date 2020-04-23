cd /usr/bin/node_exporter-0.18.1.linux-amd64
./node_exporter &
cd /usr/bin/prometheus-2.14.0.linux-amd64
./prometheus &
systemctl start grafana-server &