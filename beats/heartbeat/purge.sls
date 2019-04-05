# Disable the heartbeat systemd unit
heartbeat_disable:
    service.dead:
        - name: heartbeat-elastic
        - enable: False

# Uninstall the heartbeat package
heartbeat_uninstall:
    pkg.purged:
        - name: heartbeat-elastic