snmpd:
  pkg:
    - installed
    - name: {{ pillar['pkgs']['snmpd'] }}
  service:
    - running
    - enable: True
    - name: snmpd
    - require:
      - pkg: {{ pillar['pkgs']['snmpd'] }}
    - watch:
      - file: /etc/snmp/snmpd.conf

snmpd.conf:
  file:
    - managed
    - name: /etc/snmp/snmpd.conf
    {% if grains['os_family'] == 'RedHat' %}
    - source: salt://snmp/snmpd.conf.redhat.tmpl
    {% elif grains['os_family'] == 'Debian' %}
    - source: salt://snmp/snmpd.conf.debian.tmpl 
    {% endif %}
    - makedirs: True
    - template: jinja

distro_bin:
  file.managed:
    - name: /usr/local/bin/distro
    - source: salt://snmp/distro
    - mode: 0777
