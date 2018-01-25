#!/bin/bash

# Script to run journalbeat in foreground with the same path settings that
# the init script / systemd unit journal would do.

/usr/share/journalbeat/bin/journalbeat \
  -path.config /etc/journalbeat \
  -path.logs /var/log/journalbeat \
  $@
