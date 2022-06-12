/home/asurin/.ssh/id_rsa:
  file.managed:
    - makedirs: true
    - source: salt://static/id_rsa
    - mode: 600


# Clone the repository.
git@github.com:zsh-users/zsh-syntax-highlighting.git:
  git.latest:
    - target: /home/asurin/.oh-my-zsh/plugins
    - branch: master
    - user: asurin
    - require:
      - file: /home/asurin/.ssh/id_rsa
