/home/asurin/.vimrc:
  file.managed:
    - makedirs: true
    - source: salt://static/vimrc


/home/asurin/.vim/autoload/plug.vim:
  file.managed:
    - makedirs: true
    - source: salt://static/plug.vim


/home/asurin/.vim/colors/challenger_deep.vim:
  file.managed:
    - makedirs: true
    - source: salt://static/challenger_deep.vim
