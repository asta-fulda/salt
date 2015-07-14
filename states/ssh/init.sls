sshd:
  pkg.installed:
    - name: {{ pillar['pkgs']['ssh'] }}
  service:
    - running
    - enable: True
    - name: sshd
    - require:
      - pkg: {{ pillar['pkgs']['ssh'] }}
    - watch:
      - file: /etc/ssh/sshd_config

sshd.conf:
  file:
    - managed
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/sshd.conf.tmpl
    - makedirs: True
    - template: jinja

{% for owner, key in pillar['ssh']['authorized_keys'].items() %}
sshd.root.authorized_keys.{{ owner }}:
  ssh_auth:
    - present
    - user: root
    - name: {{ key }}
    - comment: {{ owner }}
{% endfor %}
