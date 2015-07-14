cron-apt:
  pkg.installed:
    - name: {{ pillar['pkgs']['cron-apt'] }}
