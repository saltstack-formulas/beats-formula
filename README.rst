=====
beats
=====

Install and configure the Elastic Beats patform.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``beats.repository``
--------------------

Installs the Elastic repository for version 5.x packages.

``beats.installAll``
---------------------
Installs Auditbeat, Packetbeat, Filebeat, Metricbeat and Heartbeat. Adds the Configs and enables the services.

``beats.filebeat.install``
--------------------------

Installs the Filebeat package and enables the relative systemd unit.

``beats.filebeat.config``
-------------------------

Configure Filebeat by reading from ``beats:filebeat:config`` pillar key.

``beats.filebeat.purge``
------------------------

Purges the environment created by ``beats.filebeat.*`` states.

``beats.metricbeat.install``
----------------------------

Installs the Metricbeat package and enables the relative systemd unit.

``beats.metricbeat.config``
---------------------------

Configure metricbeat by reading from ``beats:metricbeat:config`` pillar key.

``beats.metricbeat.purge``
--------------------------

Purges the environment created by ``beats.packetbeat.*`` states.

``beats.packetbeat.install``
----------------------------

Installs the packetbeat package and enables the relative systemd unit.

``beats.packetbeat.config``
---------------------------

Configure packetbeat by reading from ``beats:packetbeat:config`` pillar key.

``beats.packetbeat.purge``
--------------------------

Purges the environment created by ``beats.packetbeat.*`` states.

``beats.auditbeat.install``
----------------------------

Installs the auditbeat package and enables the relative systemd unit.

``beats.auditbeat.config``
---------------------------

Configure auditbeat by reading from ``beats:auditbeat:config`` pillar key.

``beats.auditbeat.purge``
--------------------------

Purges the environment created by ``beats.auditbeat.*`` states.

``beats.heartbeat.install``
----------------------------

Installs the heartbeat package and enables the relative systemd unit.

``beats.heartbeat.config``
---------------------------

Configure heartbeat by reading from ``beats:heartbeat:config`` pillar key.

``beats.heartbeat.purge``
--------------------------

Purges the environment created by ``beats.heartbeat.*`` states.

``beats.community.journalbeat.install``
----------------------------

Installs the community journalbeat package and enables the relative systemd unit.

``beats.community.journalbeat.config``
---------------------------

Configure journalbeat by reading from ``beats:community:journalbeat:config`` pillar key.

``beats.community.journalbeat.purge``
--------------------------

Purges the environment created by ``beats.community.journalbeat.*`` states.

References
==========

-  `Elastic Beats Platform <https://www.elastic.co/products/beats>`__
-  `Elastic Documentation <https://www.elastic.co/guide/index.html>`__
-  `Salt Formulas <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`__
