tools:
  pkg.installed:
    - pkgs:
      - {{ pillar['pkgs']['vim'] }}
      - less
      - screen
      - htop

