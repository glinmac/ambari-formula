#!/bin/sh
## Wrapper for ambari-server setup
{%- from 'ambari/map.jinja' import ambari with context %}
{%- set config = ambari.server %}

CHECK_RUN=/var/run/ambari-server/scripts/ambari-server-setup.run

if [ -e "$CHECK_RUN" ]; then
  exit 0
else

{%- if config.server.persistence.type == 'local' %}

  ambari-server setup -s \
    --java-home {{ config.java.home }} \
    | tee 2>&1 {{ config.log.dir }}/ambari-server-setup.out

{%- else %}

  ambari-server setup \
        -s \
        --java-home {{ config.java.home }} \
        --database={{ config.server.jdbc.database }} \
        --databasehost={{ config.server.jdbc.hostname }} \
        --databaseport={{ config.server.jdbc.port }} \
        --databasename={{ config.server.jdbc.database_name }} \
{%- if config.server.jdbc.database == 'postgres' %}
        --postgresschema={{ config.server.jdbc.postgres.schema }} \
{%- endif %}
        --databaseusername={{ config.server.jdbc.user.name }} \
        --databasepassword=$(cat {{ config.server.jdbc.user.passwd }}) \
        --jdbc-driver={{ config.server.jdbc.driver }} \
        --jdbc-db={{ config.server.jdbc.database }} \
        | tee 2>&1 {{ config.log.dir }}/ambari-server-setup.out

{%- endif %}

  if  [ ${PIPESTATUS[0]} -eq 0 ]; then
    touch $CHECK_RUN
  else
    exit ${PIPESTATUS[0]}
  fi
fi
