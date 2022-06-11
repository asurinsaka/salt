samba:
  role: ROLE_DOMAIN_MEMBER
  conf:
    render:
      ## list the sections your smb.conf should include
      section_order: ['global', 'homes', 'printers', 'media', 'user1share']
      ## include sections from default.yaml (yes) or ONLY those listed above (no)
      include_unordered_sections: no

    sections:
      global:
        workgroup: lab
        netbios name: o780
        bind interfaces only: yes
        interfaces: lo enp0s25


      media:
        path: /srv/nfs
        browseable: yes
        writable: yes
        public: yes

