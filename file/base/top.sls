base:
  '*':
    - default.vim
    - default.packages
    - default.auth_keys
    - default.git-clone
    - default.nfs-mount
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

  'not xps':
    - .multi-user

  'k55a':
    - .media
