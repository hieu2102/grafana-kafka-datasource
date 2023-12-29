#!/bin/bash

yarn install

yarn build

mage -v build:backend

npx @grafana/sign-plugin@latest --rootUrls http://localhost:3000

systemctl stop grafana-server

/usr/bin/cp -r dist /var/lib/grafana/plugins/kafka-datasource/

systemctl start grafana-server