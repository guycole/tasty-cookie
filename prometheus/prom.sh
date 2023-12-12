#
# https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack
# https://github.com/prometheus-community/helm-charts/issues/2816
#
helm upgrade --install kp prometheus-community/kube-prometheus-stack --version 55.1.0 -n monitoring -f values.yaml
