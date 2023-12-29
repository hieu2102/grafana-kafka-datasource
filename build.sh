#!/bin/bash

yarn install

yarn build

mage -v build:backend

npx @grafana/sign-plugin@latest --rootUrls http://localhost:3000

/usr/bin/cp -r dist /var/lib/grafana/plugins/kafka-datasource/
