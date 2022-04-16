include:
  - .glusterfs

glusterfs:
  client:
    volumes:
      glance:
        path: /var/lib/glance/images
        server: 127.0.0.1
        user: asurin
        group: asurin
    enabled: true
