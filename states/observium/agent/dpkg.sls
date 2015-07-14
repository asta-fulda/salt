dkpg-agent:
  file.managed:
    - name: /usr/lib/observium_agent/local/dpkg
    - source: salt://observium/agent/dpkg
    - makedirs: true
    - mode: 0777
