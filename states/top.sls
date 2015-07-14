base:
  '*':
    - common
    - rsnapshot.client
    - cron-apt
    - grub
    - lldp
    - ntp
    - observium.agent
    - snmp
    - ssh
    - ssmtp
    {% if grains['os_family'] == 'Debian' %}
    - observium.agent.dpkg
    {% endif %}

  'test2':
    - rsnapshot

  'monitoring.srv.x.hs-fulda.org':
    - observium

  'wohnboerse.srv.x.hs-fulda.org':
    - webserver
    - observium.agent.mysql
    - observium.agent.apache

  'ticket.srv.x.hs-fulda.org':
    - rt4

  'share.srv.x.hs-fulda.org':
    - share
