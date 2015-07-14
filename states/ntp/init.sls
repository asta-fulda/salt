ntp:
  pkg.installed:
    - name: {{ pillar['pkgs']['ntp'] }}
