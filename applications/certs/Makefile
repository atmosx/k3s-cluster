default: apply

apply:
	NAMESPACE=default aws-vault exec --no-session k3s-certs -- envsubst < certs.yaml | kubectl apply -n default -f -

delete:
	envsubst < certs.yaml | kubectl delete -n default -f -
