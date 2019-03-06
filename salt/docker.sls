install_docker_and_associated_utilities:
  pkg.installed:
    - pkgs:
      - docker
      - docker-compose

# docker:
#   group.present:
#     - addusers:
#       - {{ pillar['username'] }}
