{% if salt['pillar.get']('beats:community:journalbeat:config', {}) %}
/etc/journalbeat/journalbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:community:journalbeat:config'
        - formatter: yaml
        - makedirs: True
{% endif %}
