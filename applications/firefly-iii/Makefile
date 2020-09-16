default: apply

apply: 
	envsubst < secrets.yaml > kustomization.yaml
	kustomize build . | kubectl apply -f -
	rm kustomization.yaml

delete: 
	envsubst < secrets.yaml > kustomization.yaml
	kustomize build . | kubectl delete -f -
	rm kustomization.yaml
