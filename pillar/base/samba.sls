samba:
  role: ROLE_DOMAIN_MEMBER
  conf:
    render:
      ## list the sections your smb.conf should include
      section_order: ['global', 'homes', 'media']
      ## include sections from default.yaml (yes) or ONLY those listed above (no)
      include_unordered_sections: no

    sections:
      global:
        workgroup: lab
        netbios name: o9020
        bind interfaces only: yes
        interfaces: lo eno1


      media:
        path: /srv/nfs
        browseable: yes
        writable: yes
        public: yes
    
    users:
      asurin:
        password:
          passwd: $1$0ztZ7BaJ$4HoHWHW6p4qJoTIVyCXrv0
