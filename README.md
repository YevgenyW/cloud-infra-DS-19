# cloud-infra-DS-19
for cloud infrastructure project

To build docker (name: highload, tag: v1):
docker build -t highload:v1 .
To run docker:
docker run -it -p 5000:5000 -t highload:v1
or
docker run -it -p 5000:5000 -t -v /Users/yevhenp/Google\ Drive/UCU/cloud-infrasctructure/HW/:/projects  highload:v1 
To check service:
curl http://localhost:5000
curl http://localhost:5000/livetest
