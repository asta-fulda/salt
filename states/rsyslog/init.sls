rsyslog:
  pkg.installed:
    - name: {{ pillars['pkgs']['rsyslog'] }}
  service.running:
    - enable ture
    - name: rsyslog
    - require:
      - pkg: {{ pillars['pkgs']['rsyslog'] }}
    - watch:
      - file: /etc/rsyslog.d/remote.conf

remote.conf:
  file.managed:
    - name: /etc/rsyslog.d/remote.conf
    - source: salt://rsyslog/remote.conf.tmpl
    - makedirs: true
    - template: jinja
