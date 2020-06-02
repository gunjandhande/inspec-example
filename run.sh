#!/bin/sh

bundle install &&
inspec exec . -t ssh://${SERVERSPEC_USER}@${SERVERSPEC_IP} --password "${SERVERSPEC_PASSWORD}" --format html >> reports/results.html
inspec exec . -t ssh://${SERVERSPEC_USER}@${SERVERSPEC_IP} --password "${SERVERSPEC_PASSWORD}" --format json-rspec >> reports/results.json

