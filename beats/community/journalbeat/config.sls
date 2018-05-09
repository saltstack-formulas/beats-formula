{% if salt['pillar.get']('beats:community:journalbeat', {}) %}
/etc/journalbeat/journalbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:community:journalbeat'
        - formatter: yaml
        - makedirs: True
{% endif %}
