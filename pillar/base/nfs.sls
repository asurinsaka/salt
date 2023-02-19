nfs:
  enabled: true

  server:
    exports:
      /srv/nfs:
        192.168.2.0/24(rw,sync,no_subtree_check)
        127.0.0.0/24(rw,sync,no_subtree_check)


#  mount:
#    o755:
#      mountpoint: "/mnt/o755"
#      location: "o755:/srv/nfs"
#      persist: true
#      mkmnt: true

