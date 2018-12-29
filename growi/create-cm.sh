#!/bin/bash
oc create configmap es-config --from-file esconfig/
oc create configmap es-config-scripts  --from-file esconfig/scripts
