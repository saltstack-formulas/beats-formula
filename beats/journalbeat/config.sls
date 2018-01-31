{% if salt['pillar.get']('beats:journalbeat:config', {}) %}
/etc/journalbeat/journalbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:journalbeat:config'
        - formatter: yaml
        - makedirs: True
{% endif %}
