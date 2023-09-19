# Virtual Machines

## Clean up machine-id

```bash
truncate -s0 /etc/machine-id
truncate -s0 /var/lib/dbus/machine-id
```
