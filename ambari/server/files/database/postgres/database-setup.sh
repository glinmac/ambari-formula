#!/bin/sh
##
## Postgres init script for configuring the Ambari database
##
## Note: this is an helper script - configuration of user/password used to
## connect to the database to create the schema is out of scope currently.
## For instance, tune the script or use PGUSER/PGPASSWORD env variables
##
## File managed by Salt - your updates may be lost
{%- from 'ambari/map.jinja' import ambari with context %}
{%- set config = ambari.server %}
{%- set database_name = config.server.jdbc.database_name %}
{%- set user_name = config.server.jdbc.user.name %}
{%- set schema = config.server.jdbc.postgres.schema %}

DB_PASSWD=$(cat {{ config.server.jdbc.user.passwd }})

# Creates postgres database, user and schema

psql << EOF

CREATE DATABASE {{ database_name }};
CREATE USER {{ user_name }} WITH PASSWORD '${DB_PASSWD}';
GRANT ALL PRIVILEGES ON DATABASE {{ database_name }} TO {{ user_name }};

\connect {{ database_name }};

CREATE SCHEMA {{ schema }} AUTHORIZATION {{ user_name }};
ALTER SCHEMA {{ schema }} OWNER TO {{ user_name }};
ALTER ROLE {{ user_name }} SET search_path to '{{ schema }}', 'public';

EOF

# Ambari DDL
export PGPASSWORD=${DB_PASSWD}
psql \
  -U {{ user_name }} \
  -d  {{ database_name }} \
  -W ${DB_PASSWD} \
  -f /var/lib/ambari-server/resources/Ambari-DDL-Postgres-CREATE.sql
