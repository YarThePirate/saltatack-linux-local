#"curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -":
#  cmd.run

#"echo 'deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main' | sudo t    ee -a /etc/apt/sources.list.d/signal-xenial.list":
#  cmd.run:
#    - creates: /etc/apt/sources.list.d/signal-xenial.list

#update_packages:

signal.repo:
  pkgrepo.managed:
    - humanname: Signal
    - name: deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main
    - file: /etc/apt/sources.list.d/signal-xenial.list
    - key_url: https://updates.signal.org/desktop/apt/keys.asc
    - refresh: true

install_signal:
  pkg.installed:
    - pkgs:
      - signal-desktop
