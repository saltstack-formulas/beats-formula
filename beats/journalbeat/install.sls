include:
    - beats.repository

# Install the journalbeat package
journalbeat_install:
    pkg.installed:
        - name: journalbeat
        - require:
            - sls: beats.repository

# Enable the journalbeat systemd unit
journalbeat_enabled:
    service.running:
        - name: journalbeat
        - enable: True
        - require:
            - pkg: journalbeat_install
        {% if salt['pillar.get']('beats:journalbeat:config', {}) %}
        - watch:
            - file: /etc/journalbeat/journalbeat.yml
        {% endif %}
