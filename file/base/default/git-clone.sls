/home/asurin/.ssh/id_rsa:
  file.managed:
    - makedirs: true
    - source: salt://static/id_rsa
    - mode: 600

/home/asurin/.ssh/id_ed25519:
  file.managed:
    - makedirs: true
    - source: salt://static/id_ed25519
    - mode: 600

/home/asurin/.ssh/id_ed25519.pub:
  file.managed:
    - makedirs: true
    - source: salt://static/id_ed25519.pub
    - mode: 600


# Clone the repository.
# git@github.com:zsh-users/zsh-syntax-highlighting.git:
zsh_syntax_highlighting:
  git.latest:
    - name: https://github.com/zsh-users/zsh-syntax-highlighting.git
    - target: /home/asurin/.oh-my-zsh/plugins/zsh-syntax-highlighting
    - branch: master
    - user: asurin
