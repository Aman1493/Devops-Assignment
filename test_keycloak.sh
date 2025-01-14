#!/bin/bash

NAMESPACE="keycloak"
SERVICE="keycloak-http"

echo "Testing Keycloak Deployment..."

# Check pods
kubectl get pods -n $NAMESPACE

# Check services
kubectl get svc -n $NAMESPACE

# Test Keycloak HTTP response
EXTERNAL_IP=$(kubectl get svc -n $NAMESPACE $SERVICE -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
curl -I "http://$EXTERNAL_IP/auth"

