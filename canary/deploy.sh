#!/usr/bin/env bash
kubectl apply -f serverinfo.yaml
kubectl apply -f loadtester.yaml
kubectl apply -f gateway.yaml
kubectl apply -f canary.yaml