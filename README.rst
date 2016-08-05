==============
Ambari formula
==============

Install and configure the Ambari agent and server services.

.. note::
    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``ambari.repo``
---------------

Install the Ambari repositories for installation of the different packages

``ambari.repo.clean``
---------------------

Remove all previously configured repositories


``ambari.agent``
----------------

Install the ``ambari-agent`` package and enable the service.

``ambari.agent.clean``
----------------------

Remove all packages, configuration and files related to ambari-agent.

.. note::
	Be cautious, this will clean configuration, logs, and any paths related to ambari-agent.


``ambari.server``
-----------------

Install the ``ambari-server`` package.

``ambari.server.setup``
-----------------------

An optional state to wrap the ``ambari-server setup`` command to initialize
the Ambari server.

It is by default not activated and can either be triggered explicitly:

    salt 'my-agents*' state.sls ambari.server.setup test=True

or activated within the ``ambari.server`` state by setting the pillar value:

    ambari:
      server:
        run_ambari_server_setup: True

.. note::
  * Only supports local database and remote postgres database
  * States don't manage yet deployment of JDBC driver required


``ambari.server.clean``
----------------------

Remove all packages, configuration and files related to ambari-server.

.. note::
	Be cautious, this will clean configuration, logs, and any paths related to ambari-server.
