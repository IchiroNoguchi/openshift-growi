# Run on OpenShift
1. create PersistentVolume
  ```
  $ bash  create-pv.sh 
  ```
2. create config map
  ```
  $ # git clone https://github.com/weseek/growi-docker-compose.git 
  $ # cp  growi-docker-compose/esconfig .
  $ bash create-cm.sh
  ```
3. create any objects [is, bc, dc, svc, route]
  ```
  $ oc process  -f growi-template.yml  -p NAME=YOUR_WIKI_NAME_HERE  | oc create -f - 
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
