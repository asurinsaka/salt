base:
  '*':
    - default.packages
    - default.auth_keys
    - default.nfs-mount
    - docker
    - hostsfile
    - vim
    - vim.salt
    - vim.pyflakes
    - vim.nerdtree
    - nfs.client
    - nfs.mount

  'os:Ubuntu':
    - match: grain
    #    - ubuntu.docker
    - glusterfs.server    # does not work with manjaro
    - glusterfs.client
    - ubuntu.ca_cert
    - ubuntu.packages


  'o780':
    - nfs.server

  'sony':
    - nfs.server
