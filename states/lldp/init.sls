lldp:
  pkg.installed:
    - name: {{ pillar['pkgs']['lldp'] }}
  service.running:
    - enable: true
    - name: lldpd
    - require:
      - pkg: {{ pillar['pkgs']['lldp'] }}
    - watch:
      - file: /etc/default/lldpd

lldp_default:
  file.managed:
    - name: /etc/default/lldpd
    - soruce: salt://lldpd/default.tmpl
    - template: jinja
