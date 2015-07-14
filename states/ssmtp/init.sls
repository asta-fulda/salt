ssmtp:
  pkg.installed:
    - name: {{ pillar['pkgs']['ssmtp'] }}
  file.managed:
    - name: /etc/ssmtp/ssmtp.conf
    - source: salt://ssmtp/ssmtp.conf.tmpl
    - makedirs: True
    - template: jinja
