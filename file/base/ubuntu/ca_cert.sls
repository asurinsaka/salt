/usr/local/share/ca-certificates/asurin.crt:
  file.managed:
    - makedirs: true
    - source: salt://static/asurin.crt


update-ca-certificates:
  cmd.run:
    - onchanges:
      - file: /usr/local/share/ca-certificates/asurin.crt
