{% from 'ambari/map.jinja' import ambari with context %}

{% if salt['grains.get']('os_family') == 'RedHat' %}

{% set centos_v = 'centos7' if  salt['grains.get']('osmajorrelease') == '7' else 'centos6' %}

{% if '2.4.1.0' in ambari.repo.versions %}
ambari-repo-2.4.1.0:
  pkgrepo.managed:
    - name: ambari-2.4.1.0
    - humanname: ambari-2.4.1.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.4.1.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.4.0.1' in ambari.repo.versions %}
ambari-repo-2.4.0.1:
  pkgrepo.managed:
    - name: ambari-2.4.0.1
    - humanname: ambari-2.4.0.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.4.0.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.2.2.0' in ambari.repo.versions %}
ambari-repo-2.2.2.0:
  pkgrepo.managed:
    - name: ambari-2.2.2.0
    - humanname: ambari-2.2.2.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.2.2.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.2.1.1' in ambari.repo.versions %}
ambari-repo-2.2.1.1:
  pkgrepo.managed:
    - name: ambari-2.2.1.1
    - humanname: ambari-2.2.1.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.2.1.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.2.1.0' in ambari.repo.versions %}
ambari-repo-2.2.1.0:
  pkgrepo.managed:
    - name: ambari-2.2.1.0
    - humanname: ambari-2.2.1.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.2.1.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.2.0.0' in ambari.repo.versions %}
ambari-repo-2.2.0.0:
  pkgrepo.managed:
    - name: ambari-2.2.0.0
    - humanname: ambari-2.2.0.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.2.0.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.1.2.1' in ambari.repo.versions %}
ambari-repo-2.1.2.1:
  pkgrepo.managed:
    - name: ambari-2.1.2.1
    - humanname: ambari-2.1.2.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.1.2.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.1.2' in ambari.repo.versions %}
ambari-repo-2.1.2:
  pkgrepo.managed:
    - name: ambari-2.1.2
    - humanname: ambari-2.1.2
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.1.2
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.1.1' in ambari.repo.versions %}
ambari-repo-2.1.1:
  pkgrepo.managed:
    - name: ambari-2.1.1
    - humanname: ambari-2.1.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.1.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.1' in ambari.repo.versions %}
ambari-repo-2.1:
  pkgrepo.managed:
    - name: ambari-2.1
    - humanname: ambari-2.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/2.x/updates/2.1.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/{{centos_v}}/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if  salt['grains.get']('osmajorrelease') < '7' %}
{# No redhat/centos 7 releases for version earlier than 2.1 #}

{% if '2.0.2' in ambari.repo.versions %}
ambari-repo-2.0.2:
  pkgrepo.managed:
    - name: ambari-2.0.2
    - humanname: ambari-2.0.2
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.2
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.0.1' in ambari.repo.versions %}
ambari-repo-2.0.1:
  pkgrepo.managed:
    - name: ambari-2.0.1
    - humanname: ambari-2.0.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '2.0.0' in ambari.repo.versions %}
ambari-repo-2.0.0:
  pkgrepo.managed:
    - name: ambari-2.0.0
    - humanname: ambari-2.0.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% if '1.7.0' in ambari.repo.versions %}
ambari-repo-1.7.0:
  pkgrepo.managed:
    - name: ambari-1.7.0
    - humanname: ambari-1.7.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.7.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1
{% endif %}

{% endif %}

{% endif %}

{% if salt['grains.get']('os_family') == 'Debian' %}

{% if salt['grains.get']('os') == 'Debian' %}

{% if '2.4.1.0' in ambari.repo.versions %}
ambari-repo-2.4.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.4.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.4.0.1' in ambari.repo.versions %}
ambari-repo-2.4.0.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.4.0.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.2.0' in ambari.repo.versions %}
ambari-repo-2.2.2.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.2.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.1' in ambari.repo.versions %}
ambari-repo-2.2.1.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.1.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.0' in ambari.repo.versions %}
ambari-repo-2.2.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.0.0' in ambari.repo.versions %}
ambari-repo-2.2.0.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.0.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2.1' in ambari.repo.versions %}
ambari-repo-2.1.2.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.1.2.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2' in ambari.repo.versions %}
ambari-repo-2.1.2:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.1.2 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% elif salt['grains.get']('os') == 'Ubuntu' %}

{% if salt['grains.get']('oscodename') == 'precise' %}

{% if '2.4.1.0' in ambari.repo.versions %}
ambari-repo-2.4.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.4.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.4.0.1' in ambari.repo.versions %}
ambari-repo-2.4.0.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.4.0.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.2.0' in ambari.repo.versions %}
ambari-repo-2.2.2.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.2.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.1' in ambari.repo.versions %}
ambari-repo-2.2.1.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.1.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.0' in ambari.repo.versions %}
ambari-repo-2.2.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.0.0' in ambari.repo.versions %}
ambari-repo-2.2.0.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.0.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2.1' in ambari.repo.versions %}
ambari-repo-2.1.2.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.1.2.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2' in ambari.repo.versions %}
ambari-repo-2.1.2:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.1.2 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.0.2' in ambari.repo.versions %}
ambari-repo-2.0.2:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.2 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.0.1' in ambari.repo.versions %}
ambari-repo-2.0.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.0.0' in ambari.repo.versions %}
ambari-repo-2.0.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '1.7.0' in ambari.repo.versions %}
ambari-repo-1.7.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/1.x/updates/1.7.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% elif salt['grains.get']('oscodename') == 'trusty' %}

{% if '2.4.1.0' in ambari.repo.versions %}
ambari-repo-2.4.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.4.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.4.0.1' in ambari.repo.versions %}
ambari-repo-2.4.0.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.4.0.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.2.0' in ambari.repo.versions %}
ambari-repo-2.2.2.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.2.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.1' in ambari.repo.versions %}
ambari-repo-2.2.1.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.1.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.1.0' in ambari.repo.versions %}
ambari-repo-2.2.1.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.1.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.2.0.0' in ambari.repo.versions %}
ambari-repo-2.2.0.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.0.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2.1' in ambari.repo.versions %}
ambari-repo-2.1.2.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.1.2.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% if '2.1.2' in ambari.repo.versions %}
ambari-repo-2.1.2:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.1.2 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}

{% endif %}
{% endif %}
{% endif %}
