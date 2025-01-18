#!/bin/bash
# Generate load on the guestbook service
kubectl run -i --tty load-generator --image=busybox --restart=Never -- /bin/sh -c "while true; do wget -q -O- http://guestbook-service; done"
