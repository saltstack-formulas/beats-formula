{% if salt['pillar.get']('beats:heartbeat:config', {}) %}
/etc/heartbeat/heartbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:heartbeat:config'
        - formatter: yaml
{% endif %}