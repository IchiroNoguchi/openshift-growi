#!/bin/bash
for a in {000..009}
do
  oc create -f - <<EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv$a
spec:
  capacity:
    storage: 2Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy:
    Retain
  nfs:
    path: /export/v$a
    server: himeji.castle.test
    readOnly: false
EOF

done
