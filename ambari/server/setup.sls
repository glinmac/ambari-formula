{% from 'ambari/map.jinja' import ambari with context %}

include:
  - ambari.server

ambari-server-scritps-dir:
  file.directory:
    - name: /etc/ambari-server/scripts

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
    - creates: /etc/ambari-server/scripts/ambari-server-setup.run
    - user: {{ ambari.server.ambari_server.user }}
