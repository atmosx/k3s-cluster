default: apply

apply:
	kubectl apply -n default -f whoami-deployment.yaml
	kubectl apply -n default -f whoami-ingress.yaml
	kubectl apply -n default -f whoami-service.yaml

delete:
	kubectl delete -n default -f whoami-deployment.yaml
	kubectl delete -n default -f whoami-ingress.yaml
	kubectl delete -n default -f whoami-service.yaml
