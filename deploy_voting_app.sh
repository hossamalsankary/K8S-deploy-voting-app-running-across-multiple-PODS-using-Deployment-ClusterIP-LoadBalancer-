# !/bin/bash
#run service

echo '------------ deploy postgress ---------'
kubectl create -f ./deply/db_deploy.yml

echo '------------ deploy redis ---------'
kubectl create -f ./deply/redis_deply.yml

echo '------------ deploy votingapp ---------'

kubectl create -f ./deply/voting_app_deply.yml


echo '------------ deploy result ---------'

kubectl create -f ./deply/result_app_deply.yml

echo '------------ deploy redis  services  -------'
kubectl create -f ./db/redis_services.yml 

echo '------------ deploy postgress  services  -------'
kubectl create -f ./db/postgres_service.yml

echo '------------ deploy  result services  -------'
kubectl create -f ./result/result_app_service.yml 

echo '------------ deploy  voting services  -------'
kubectl create -f ./voting/voing_app_service.yml 