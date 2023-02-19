/home/asurin/.vimrc:
  file.managed:
    - makedirs: true
    - source: salt://static/vimrc
    - user: asurin
    - group: asurin


/home/asurin/.vim/autoload/plug.vim:
  file.managed:
    - makedirs: true
    - source: salt://static/plug.vim
    - user: asurin
    - group: asurin


/home/asurin/.vim/colors/challenger_deep.vim:
  file.managed:
    - makedirs: true
    - source: salt://static/challenger_deep.vim
    - user: asurin
    - group: asurin
