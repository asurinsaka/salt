/home/asurin/.vimrc:
  file.managed:
    - makedirs: true
    - source: salt://static/vimrc


/home/asurin/.vim/autoload/plug.vim
  file.managed:
    - makedirs: true
    - source: salt://static/plug.vim
