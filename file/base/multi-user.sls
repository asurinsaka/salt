# Ensure default target is set to 'multi-user.target' (non-graphical). Change to 'graphical.target' if that is what you prefer
systemd_default_target:
  cmd.run:
    - name: systemctl set-default multi-user.target
    - unless: test `systemctl get-default` = 'multi-user.target'

