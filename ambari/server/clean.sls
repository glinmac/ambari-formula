{%- from 'ambari/map.jinja' import ambari with context %}

ambari-server:
  pkg.purged

/etc/ambari-server:
  file.absent

/var/log/ambari-server:
  file.absent

/var/lib/ambari-server:
  file.absent

/usr/lib/ambari-server:
  file.absent

{{ ambari.server.kerberos.keytab.cache.dir }}:
  file.absent

{{ ambari.server.security.server.keys_dir }}:
  file.absent

