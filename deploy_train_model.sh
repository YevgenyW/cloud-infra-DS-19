kubectl run train-model-app --image=zpozdniakov/train-model:v1 --port=5000
kubectl expose deployment train-model-app --type=NodePort