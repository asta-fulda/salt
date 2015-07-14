dependencies:
  pkg.installed:
    - name: libwww-perl

apache-agent:
  file.managed:
    - name: /usr/lib/observium_agent/local/apache
    - source: salt://observium/agent/apache
    - makedirs: true
    - mode: 0777
