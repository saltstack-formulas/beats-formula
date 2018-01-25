#!/bin/bash

# Script to run journalbeat in foreground with the same path settings that
# the init script / systemd unit journal would do.

/usr/share/journalbeat/bin/journalbeat \
  -path.config /etc/journalbeat \
  -path.home /usr/share/filebeat \
  -path.logs /var/log/journalbeat \
  -path.data /var/lib/journalbeat \
  $@
