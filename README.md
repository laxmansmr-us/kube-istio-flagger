# kube-istio-flagger
sample for kubernetes + istio ,also will shows you how to use Istio and Flagger to automate canary deployments.
this sample base on Istio sample [Bookinfo](https://istio.io/zh/docs/examples/bookinfo/)

## Setup Kubernetes Cluster
See [Here](https://github.com/shawnliujw/kubeadm-kubernetes/blob/master/README.md)

## Install Istio
See [Here](https://istio.io/zh/docs/setup/kubernetes/install/helm/)

## Install Flagger

```bash

# add repo
helm repo add flagger https://flagger.app  

# install flagger
helm upgrade -i flagger flagger/flagger \
--namespace=istio-system \
--set meshProvider=istio \
--set metricsServer=http://prometheus:9090  

# install grafana for monitoring canary progress
helm upgrade -i flagger-grafana flagger/grafana \
--namespace=istio-system \
--set url=http://prometheus.istio-system:9090 \
--set user=admin \
--set password=change-me
```  
Or follow the instruction  [Here](https://docs.flagger.app/install/flagger-install-on-kubernetes)  

## Deploy project  
Follow the instruction [Here](https://istio.io/zh/docs/examples/bookinfo/)  

## Canary with flagger  
1. trigger the canary `kubectl -n test set image deployment/sinfo sinfod=registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:2`



