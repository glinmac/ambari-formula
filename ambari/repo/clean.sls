{% if salt['grains.get']('os_family') == 'RedHat' %}

ambari-repo-2.2.2.0:
  pkgrepo.absent:
    - name: ambari-2.2.2.0

ambari-repo-2.2.1.1:
  pkgrepo.absent:
    - name: ambari-2.2.1.1

ambari-repo-2.2.1.0:
  pkgrepo.absent:
    - name: ambari-2.2.1.0

ambari-repo-2.2.0.0:
  pkgrepo.absent:
    - name: ambari-2.2.0.0

ambari-repo-2.1.2.1:
  pkgrepo.absent:
    - name: ambari-2.1.2.1

ambari-repo-2.1.2:
  pkgrepo.absent:
    - name: ambari-2.1.2

ambari-repo-2.1.1:
  pkgrepo.absent:
    - name: ambari-2.1.1

ambari-repo-2.1:
  pkgrepo.absent:
    - name: ambari-2.1

ambari-repo-2.0.1:
  pkgrepo.absent:
    - name: ambari-2.0.1

ambari-repo-2.0.0:
  pkgrepo.absent:
    - name: ambari-2.0.0

ambari-repo-1.7.0:
  pkgrepo.absent:
    - name: ambari-1.7.0
{% endif %}

{% if salt['grains.get']('os_family') == 'Debian' %}

{% if salt['grains.get']('os') == 'Debian' %}

ambari-repo-2.2.2.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.2.0 Ambari main

ambari-repo-2.2.1.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.1.1 Ambari main

ambari-repo-2.2.1.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.1.0 Ambari main

ambari-repo-2.2.0.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.2.0.0 Ambari main

ambari-repo-2.1.2.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.1.2.1 Ambari main

ambari-repo-2.1.2:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.1.2 Ambari main

ambari-repo-2.1:
  pkgrepo.absent:
    - name: deb http://s3.amazonaws.com/dev.hortonworks.com/ambari/ubuntu12/2.x/BUILDS/2.1.0-1409 Ambari main

ambari-repo-2.0.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.1 Ambari main

ambari-repo-2.0.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.0 Ambari main

ambari-repo-1.7.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/1.x/updates/1.7.0 Ambari main

{% elif salt['grains.get']('os') == 'Ubuntu' %}


{% if salt['grains.get']('oscodename') == 'precise' %}

ambari-repo-2.2.2.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.2.0 Ambari main

ambari-repo-2.2.1.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.1.1 Ambari main

ambari-repo-2.2.1.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.1.0 Ambari main

ambari-repo-2.2.0.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.0.0 Ambari main

ambari-repo-2.1.2.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.1.2.1 Ambari main

ambari-repo-2.1.2:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.1.2 Ambari main

ambari-repo-2.0.2:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.2 Ambari main

ambari-repo-2.0.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.1 Ambari main

ambari-repo-2.0.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.0.0 Ambari main

ambari-repo-1.7.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu12/1.x/updates/1.7.0 Ambari main
{% elif salt['grains.get']('oscodename') == 'trusty' %}

ambari-repo-2.2.2.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.2.0 Ambari main

ambari-repo-2.2.1.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.1.1 Ambari main

ambari-repo-2.2.1.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.1.0 Ambari main

ambari-repo-2.2.0.0:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.0.0 Ambari main

ambari-repo-2.1.2.1:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.1.2.1 Ambari main

ambari-repo-2.1.2:
  pkgrepo.absent:
    - name: deb http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.1.2 Ambari main

{% endif %}

{% endif %}

{% endif %}
