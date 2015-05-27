{%- from 'ambari/map.jinja' import ambari with context %}

ambari-server:
  pkg.purged

/etc/ambari-server:
  file.absent

/var/log/ambari-server:
  file.absent

/var/lib/ambari-server:
  file.absent
