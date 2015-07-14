mysql-agent:
  file.managed:
    - name: /usr/lib/observium_agent/local/mysql
    - source: salt://observium/agent/mysql
    - makedirs: true
    - mode: 0777

mysql-agent-conf:
  file.managed:
    - name: /usr/lib/observium_agent/local/mysql.cnf
    - source: salt://observium/agent/mysql.cnf
    - makedirs: true
    - mode: 0666
