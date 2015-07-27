{%- from 'ambari/map.jinja' import ambari with context %}

ambari-agent:
  pkg.purged

/etc/ambari-agent:
  file.absent

/var/log/ambari-agent:
  file.absent

/var/lib/ambari-agent:
  file.absent

/usr/lib/ambari-agent:
  file.absent

{{ ambari.agent.agent.prefix }}:
  file.absent

{{ ambari.agent.agent.tmp_dir }}:
  file.absent

{{ ambari.agent.agent.cache_dir }}:
  file.absent

{{ ambari.agent.security.keysdir }}:
  file.absent

