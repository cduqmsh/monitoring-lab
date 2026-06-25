mkdir /data/promtail

wget https://raw.githubusercontent.com/grafana/loki/v2.9.1/clients/cmd/promtail/promtail-docker-config.yaml -O promtail-config.yaml

docker run --name promtail -d -v $(pwd):/mnt/config -v /var/log:/var/log --link loki grafana/promtail:2.9.1 -config.file=/mnt/config/promtail-config.yaml
