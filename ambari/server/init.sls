{% from 'ambari/map.jinja' import ambari with context %}
{% from 'ambari/map.jinja' import version_mapping with context %}

include:
  - ambari.repo

{% if salt['grains.get']('os_family') == 'RedHat' %}
ambari-server-{{ambari.version}}-pkg:
  pkg.latest:
    - name: ambari-server
    - fromrepo: ambari-{{ ambari.version }}
    - version: {{ ambari.version }}
{% endif %}

{% if salt['grains.get']('os_family') == 'Debian' %}
ambari-server-{{ambari.version}}-pkg:
  pkg.installed:
    - name: ambari-server
    - fromrepo: Ambari
    - version: {{ version_mapping.get(ambari.version) }}
{% endif %}

ambari-server-properties:
  file.managed:
    - name: /etc/ambari-server/conf/ambari.properties
    - source: salt://ambari/server/files/ambari.properties
    - template: jinja
    - user: root
    - group: root
    - permission: 0644
