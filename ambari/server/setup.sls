{% from 'ambari/map.jinja' import ambari with context %}

include:
  - ambari.server

ambari-server-scritps-dir:
  file.directory:
    - name: /etc/ambari-server/scripts
    - require:
      - sls: ambari.server

{% if ambari.server.server.jdbc.database == 'postgres' %}
ambari-server-database-postgres-init:
  file.managed:
    - name: /etc/ambari-server/scripts/ambari-server-database-setup.sh
    - source: salt://ambari/server/files/database/postgres/database-setup.sh
    - template: jinja
    - user: {{ ambari.server.ambari_server.user }}
    - group: root
    - permission: 0755

#run-ambari-server-database-postgres-init:
#  cmd.run:
#    - name: sh /etc/ambari-server/scripts/ambari-server-database-setup.sh
#    - creates: /var/run/ambari-server/ambari-server-database-setup.run
#    - user: postgres
{% endif %}

ambari-server-setup-script:
  file.managed:
    - name: /etc/ambari-server/scripts/ambari-server-setup.sh
    - source: salt://ambari/server/files/ambari-server-setup.sh
    - template: jinja
    - user: {{ ambari.server.ambari_server.user }}
    - group: root
    - permission: 0755

run-ambari-server-setup:
  cmd.run:
    - name:  sh /etc/ambari-server/scripts/ambari-server-setup.sh
    - creates: /var/run/ambari-server/ambari-server-setup.run
    - user: {{ ambari.server.ambari_server.user }}
