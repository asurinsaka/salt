base:
  '*':
    - default.vim
    - default.packages
    - default.auth_keys
    - default.git-clone
    - default.nfs-mount
    - default.user-asurin
    - docker
    - hostsfile
    - vim
    - vim.salt
    - vim.nerdtree
    - nfs.client
    - nfs.mount

  'os:Ubuntu':
    - match: grain
    - ubuntu.docker
    - ubuntu.ca_cert
    - ubuntu.packages
    - pyenv

  'os:Debian':
    - match: grain
    - sudoers
    - ubuntu.docker

  'o9020':
    - nfs.server

  'not latitude':
    - .multi-user

  'k55a':
    - .media
