# Disable the journalbeat systemd unit
journalbeat_disable:
    service.dead:
        - name: journalbeat
        - enable: False

# Uninstall the journalbeat package
journalbeat_uninstall:
    pkg.purged:
        - name: journalbeat
