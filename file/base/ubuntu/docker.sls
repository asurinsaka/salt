docker_ce_repo:
  pkgrepo.managed:
    - humanname: Docker CE
    - name: deb [arch={{grains['osarch']}}] https://download.docker.com/linux/ubuntu {{grains['oscodename']}} stable
    - file: /etc/apt/sources.list.d/docker-ce.list
    - key_url: salt://static/docker_ce_apt.gpg

Docker installed:
  pkg.installed:
    - name: docker-ce
    - refresh: True
    - require:
      - docker_ce_repo

docker-service:
  service.running:
    - name: docker

docker-group:
  group.present:
    - name: docker
    - addusers:
        - asurin
