#!/usr/bin/env bash
docker build --build-arg VERSION=1.0 -t registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:1 .
docker build --build-arg VERSION=2.0 -t registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:2 .

#docker push registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:1
#docker push registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:2
#docker run -p 49160:8080  registry.cn-shanghai.aliyuncs.com/shawn_repo/istio-flagger:1