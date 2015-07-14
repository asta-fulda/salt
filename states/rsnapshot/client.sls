rsync:
  pkg.installed:
    - name: {{ pillar['pkgs']['rsync'] }}
