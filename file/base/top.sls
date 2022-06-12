base:
  '*':
    - default.vim
    - default.packages
    - default.auth_keys
    #    - default.git-clone
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
    - glusterfs.server    # does not work with manjaro
    - glusterfs.client
    - ubuntu.ca_cert
    - ubuntu.packages


  'o780':
    - default.nfs-share-location
    - nfs.server

  'not xps':
    - .multi-user

  'o755':
    - default.nfs-share-location
    - nfs.server

  'k55a':
    - .media
