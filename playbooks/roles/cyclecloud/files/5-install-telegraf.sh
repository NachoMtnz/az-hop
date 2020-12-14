#!/bin/bash

echo "#### Configuration repo for InfluxDB:"
cat <<EOF | tee /etc/yum.repos.d/influxdb.repo
[influxdb]
name = InfluxDB Repository - RHEL \$releasever
baseurl = https://repos.influxdata.com/centos/\$releasever/\$basearch/stable
enabled = 1
gpgcheck = 1
gpgkey = https://repos.influxdata.com/influxdb.key
EOF

echo "#### Telegraf Installation:"
yum -y install telegraf

echo "Copy configuration file to use"
TELEGRAF_CONF_DIR=/etc/telegraf
cp ../files/telegraf.conf $TELEGRAF_CONF_DIR/telegraf.conf

echo "#### Starting Telegraf services:"
systemctl start telegraf
systemctl enable telegraf
