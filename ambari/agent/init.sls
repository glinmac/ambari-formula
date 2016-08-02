{% from 'ambari/map.jinja' import ambari with context %}
{% from 'ambari/map.jinja' import version_mapping with context %}

include:
  - ambari.repo
  {% if ambari.agent.start_service %}
  - ambari.agent.service
  {% endif %}

{% if salt['grains.get']('os_family') == 'RedHat' %}
ambari-agent-{{ambari.version}}-pkg:
  pkg.installed:
    - name: ambari-agent
    - fromrepo: ambari-{{ ambari.version }}
    - version: {{ version_mapping.get(ambari.version) }}
{% endif %}

{% if salt['grains.get']('os_family') == 'Debian' %}
ambari-agent-{{ambari.version}}-pkg:
  pkg.installed:
    - name: ambari-agent
    - fromrepo: Ambari
    - version: {{ version_mapping.get(ambari.version) }}
{% endif %}

ambari-agent-{{ambari.version}}-config:
  file.managed:
    - name: /etc/ambari-agent/conf/ambari-agent.ini
    - source: salt://ambari/agent/files/ambari-agent.ini
    - template: jinja
    - mode: 0640
    - user: root
    - group: root
    - makedirs: True
    - require_in:
      - pkg: ambari-agent-{{ambari.version}}-pkg
