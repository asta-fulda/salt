nfs-server:
  pkg.installed:
    - name: nfs-kernel-server
  service.running:
    - enable: true
    - name: nfs-kernel-server
    - require:
      - pkg: nfs-kernel-server
    - watch:
      - file: /etc/exports

exports:
  file.managed:
    - name: /etc/exports
    - source: salt://share/exports.tmpl
    - template: jinja

nfs-common:
  pkg.installed:
    - name: nfs-common
  service.running:
    - enable: true
    - name: nfs-common
    - require:
      - pkg: nfs-common

samba:
  pkg.installed:
    - name: samba
  service.running:
    - enable: true
    - name: smbd
    - require:
      - pkg: samba
    - watch:
      - file: /etc/samba/smb.conf

smb:
  file.managed:
    - name: /etc/samba/smb.conf
    - source: salt://share/smb.conf.tmpl
    - template: jinja
