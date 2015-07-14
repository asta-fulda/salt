xinetd:
  pkg.installed:
    - name: {{ pillar['pkgs']['xinetd'] }}
  service.running:
    - enable: true
    - require:
      - pkg: {{ pillar['pkgs']['xinetd'] }}
    - watch:
      - file: /etc/xinetd.d/*

obersium_agent_xinetd:
  file.managed:
    - name: /etc/xinetd.d/observium_agent_xinetd
    - source: salt://observium/agent/observium_agent_xinetd.tmpl
    - makedirs: true
    - template: jinja

observium_agent:
  file.managed:
    - name: /usr/local/bin/observium_agent
    - source: salt://observium/agent/observium_agent
    - mode: 0777

agent_local:
  file.directory:
    - name: /usr/lib/observium_agent/local 
    - makedirs: true
