rsnapshot:
  pkg.installed:
    - name: {{ pillar['pkgs']['rsnapshot'] }}

rsnapshot.conf:
  file.managed:
    - name: /etc/rsnapshot.conf
    - source: salt://rsnapshot/rsnapshot.conf.tmpl
    - template: jinja
