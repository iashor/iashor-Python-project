imagename="first-proj-img"
container_name="first-proj-container"
hub_imagename="iashor1/first-proj-py-img"
myport="5000"
docker_port="5000"
namespace="first-proj"
service_name="first-svc"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${imagename} || true

docker build -t ${imagename} .

docker push ${imagename}

minikube start 

kubectl create ns ${namespace}

kubectl apply -f k8s/

minikube service ${service_name} -n ${namespace} --url

docker run -d --name ${container_name} -p ${myport}:${docker_port} ${imagename}
