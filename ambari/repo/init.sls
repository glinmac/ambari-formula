{% if salt['grains.get']('os_family') == 'RedHat' %}
ambari-repo-2.0.1:
  pkgrepo.managed:
    - name: ambari-2.0.1
    - humanname: ambari-2.0.1
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.1
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1

ambari-repo-2.0.0:
  pkgrepo.managed:
    - name: ambari-2.0.0
    - humanname: ambari-2.0.0
    - baseurl: http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.0.0
    - gpgcheck: 1
    - gpgkey: http://public-repo-1.hortonworks.com/ambari/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 0
    - priority: 1

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

{% if salt['grains.get']('os_family') == 'Debian' %}
ambari-repo-2.0.1:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.1 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD

ambari-repo-2.0.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD

ambari-repo-1.7.0:
  pkgrepo.managed:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/1.x/updates/1.7.0 Ambari main
    - keyserver: keyserver.ubuntu.com
    - keyid: B9733A7A07513CAD
{% endif %}
