# cloud-infra-DS-19
Cloud infrastructure home project

Task 1

To build docker image ('train-model' - image name, 'v1' - tag, 'zpozdniakov' - docker login name):\
docker build -t zpozdniakov/train-model:v1 .

To run docker container (with open 5000 port):
docker run -it -p 5000:5000 -t zpozdniakov/train-model:v1
or (to create volume as well)
docker run -it -p 5000:5000 -t -v /Users/yevhenp/Google\ Drive/UCU/cloud-infrasctructure/cloud-infra/web/:/app  zpozdniakov/train-model:v1

To test that service is ready:
curl http://localhost:5000/livetest
or
http://localhost:5000/livetest in browser window

To start model training:
curl http://localhost:5000/train/<int: epochs>
or
http://localhost:5000/train/<int: epochs> in browser window
where 'epochs' - number of epochs to train. On my laptop(without GPU) one epoch is running more than 1 minute.
Service will return accuracy of the trained model. 

Task 2
 - replicaset.yaml
 - service.yaml

Task 3

make sure that docker image is in dockerhub:
docker push zpozdniakov/train-model

To start minikube (on OS X):
minikube start --vm-driver hyperkit

To check status:
minikube status

To start app using yaml file from Task 2:
./Task3_deploy_train_model_yaml.sh

To start app without yaml file:
Task3_deploy_train_model.sh zpozdniakov/model-train:v1

Task 4:
- add 'livenessProbe' and 'readinessProbe' to file  'replicaset.yaml'

Task 5
Run:
Task5_local_deploy.sh zpozdniakov/train-model:local
where 'zpozdniakov/train-model:local' - name of docker image that will be created using use Minikube Docker daemon
