user_asurin:
  user.present:
  - name: asurin
  - fullname: Asurin Saka
  - home: /home/asurin
  - shell: /bin/zsh

/home/asurin/.zshrc:
  file.managed:
    - makedirs: true
    - user: asurin
    - group: asurin
    - source: salt://static/zshrc
    - mode: 644

/home/asurin/.oh-my-zsh:
  file.recurse:
    - source: salt://static/oh-my-zsh
    - user: asurin
    - group: asurin
    - include_empty: True

