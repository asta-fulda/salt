dependencies-pkgs:
  pkg.installed:
    - pkgs:
      - libapache2-mod-php5
      - php5-cli
      - php5-mysql
      - php5-gd
      - php5-snmp
      - php-pear
      - snmp
      - graphviz
      - php5-mcrypt
      - php5-json
      - subversion
      - mysql-server
      - mysql-client
      - rrdtool
      - fping
      - imagemagick
      - whois
      - mtr-tiny
      - nmap
      - ipmitool
      - python-mysqldb
      - mysql-server
      - libvirt-bin

observium-folder:
  file.directory:
    - name: /opt/observium
    - user: root
    - makedirs: true

observium-logs:
  file.directory:
    - name: /opt/observium/logs
    - user: www-data
    - group: www-data
    - makedirs: true

observium-cron:
  file.managed:
    - name: /etc/cron.d/observium
    - source: salt://observium/observium.cron.tmpl
    - makedirs: true
    - template: jinja
