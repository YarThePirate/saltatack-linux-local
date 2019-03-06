remove_virtualization_software:
  pkg.removed:
    - pkgs:
      - virtualbox
      - vagrant
      - packer
