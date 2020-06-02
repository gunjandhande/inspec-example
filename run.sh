#!/bin/sh

bundle install &&
inspec exec . -t ssh://${INSPEC_USER}@${INSPEC_IP} --password "${INSPEC_PASSWORD}" --format html >> reports/results.html
inspec exec . -t ssh://${INSPEC_USER}@${INSPEC_IP} --password "${INSPEC_PASSWORD}" --format json-rspec >> reports/results.json

