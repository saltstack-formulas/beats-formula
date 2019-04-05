include:
    - beats.repository

# Install the heartbeat package
heartbeat_install:
    pkg.installed:
        - name: heartbeat-elastic
        - require:
            - sls: beats.repository

# Enable the heartbeat systemd unit
heartbeat_enabled:
    service.running:
        - name: heartbeat-elastic
        - enable: True
        - require:
            - pkg: heartbeat_install
        {% if salt['pillar.get']('beats:heartbeat:config', {}) %}
        - watch:
            - file: /etc/heartbeat/heartbeat.yml
        {% endif %}