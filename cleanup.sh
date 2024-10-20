imagename="first-proj-img"
container_name="first-proj-container"
hub_imagename="iashor1/first-proj-py-img"
namespace="first-proj"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${imagename} || true

docker rmi ${hub_imagename} || true

kubectl delete ns ${namespace}

#minikube stop
