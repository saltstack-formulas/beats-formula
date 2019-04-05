#!jinja|yaml|gpg

include:
  - beats.repository
  - beats.auditbeat.install
  - beats.auditbeat.config
  - beats.filebeat.install
  - beats.filebeat.config
  - beats.metricbeat.install
  - beats.metricbeat.config
  - beats.packetbeat.install
  - beats.packetbeat.config
  - beats.heartbeat.install
  - beats.heartbeat.config
