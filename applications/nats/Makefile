default: apply

install:
	helm repo add nats https://nats-io.github.io/k8s/helm/charts/
	helm repo update
	helm install --create-namespace -n nats  nats nats/nats --set cluster.enabled=true
	kubectl apply -f service-lb.yaml
