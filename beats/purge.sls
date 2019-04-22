{% if salt['pillar.get']('beats:use_upstream_repo', 'True') %}
{% set version = salt['pillar.get']('beats:version', '5') %}
{% if salt['grains.get']('os_family') == 'Debian' %}

remove_elastic_repository:
    pkgrepo.absent:
        - name: deb https://artifacts.elastic.co/packages/{{ version }}.x/apt stable main

{% elif salt['grains.get']('os_family') == 'RedHat' %}

remove_elastic_repository:
    pkgrepo.absent:
        - name: elastic

{% endif %}
{% endif %}
