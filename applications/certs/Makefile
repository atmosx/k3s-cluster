default: apply

apply:
	NAMESPACE=default envsubst < certs.yaml | kubectl apply -n default -f -
	NAMESPACE=tekton-pipelines envsubst < certs.yaml | kubectl apply -n tekton-pipelines -f -

delete: 
	envsubst < certs.yaml | kubectl delete -n default -f -
	envsubst < certs.yaml | kubectl delete -n tekton-pipelines -f -
