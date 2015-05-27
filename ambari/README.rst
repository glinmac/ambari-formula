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

``ambari.agent``
----------------

Install the ``ambari-agent`` package and enable the service.

``ambari.server``
-----------------

Install the ``ambari-server`` package.
