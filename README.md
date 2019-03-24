# cloud-infra-DS-19
for cloud infrastructure project

Task 1

To build docker image ('train-model' - image name, 'v1' - tag, 'zpozdniakov' - docker login name):
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


Task 3

make sure that docker image is in dockerhub:
docker push zpozdniakov/train-model

To start minikube (on OS X):
minikube start --vm-driver hyperkit

To check status:
minikube status

To start app:
kubectl run model-train-app --image=zpozdniakov/model-train:v1 --port=5000
message "deployment.apps "model-train-app" created" expected

kubectl expose deployment model-train-app --type=NodePort
message "service "model-train-app" exposed" expected

To get services list:
kubectl get services
or
minikube service list

Now you can run:
minikube dashboard
