{%- from "beats/map.jinja" import journalbeat with context %}

# Install the journalbeat binary
journalbeat_install:
  file.managed:
    - name: /usr/share/journalbeat/bin/journalbeat
    - source: {{ journalbeat.binary }}
    - user: root
    - group: root
    - mode: 0755
    - makedirs: True
    - dir_mode: 0755

# add journalbeat.sh to run in foreground
journalbeat_script:
  file.managed:
    - name: /usr/bin/journalbeat.sh
    - source: salt://beats/journalbeat/files/journalbeat.sh
    - user: root
    - group: root
    - mode: 0775

# Add journalbeat systemd unit
journalbeat_systemd:
  file.managed:
    - name: /lib/systemd/system/journalbeat.service
    - source: salt://beats/journalbeat/files/journalbeat.service
    - user: root
    - group: root
    - mode: 0644

# Enable the journalbeat systemd unit
journalbeat_enabled:
  service.running:
    - name: journalbeat
    - enable: True
    - require:
        - file: journalbeat_install
        - file: journalbeat_systemd
    {% if salt['pillar.get']('beats:journalbeat:config', {}) %}
    - watch:
        - file: /etc/journalbeat/journalbeat.yml
    {% endif %}
