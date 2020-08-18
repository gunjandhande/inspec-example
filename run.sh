#!/bin/sh

bundle install &&
cinc-auditor exec . -t ssh://${INSPEC_USER}@${INSPEC_IP} --key-files "${INSPEC_SSH_KEY}" --reporter html >> reports/results.html
cinc-auditor exec . -t ssh://${INSPEC_USER}@${INSPEC_IP} --key-files "${INSPEC_SSH_KEY}" --reporter json >> reports/results.json
