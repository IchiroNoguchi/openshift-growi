1. create PersistentVolume
  ```
  $ bash  create-pv.sh 
  ```
2. create config map
  ```
  $ bash create-cm.sh
  ```


## Memo
```
 docker pull elasticsearch:5.3-alpine 
 docker tag  elasticsearch:5.3-alpine  $( oc registry  info)/growi/elasticsearch:5.3-alpine
 docker push   $( oc registry  info)/growi/elasticsearch:5.3-alpine



 docker pull mongo:3.4
 docker tag  mongo:3.4 $( oc registry  info)/growi/mongo:3.4
 docker push  $( oc registry  info)/growi/mongo:3.4
 ```
