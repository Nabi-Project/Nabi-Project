#!/bin/bash

helm upgrade --install nabi oci://registry.internal.hikaru.app:443/helm-charts/nabi \
  --version 0.4.2 \
  --namespace nabi-prod --create-namespace \
  --set global.deployConfig.environment="prod" \
  --set global.deployConfig.ingressClassName="nabi-project-nginx" \
  --set global.deployConfig.clusterIssuer="letsencrypt-issuer" \
  --set nabi-cloudflared.enabled=true \
  --set nabi-cloudflared.applicationSettings.tunnelUUID="a65ae449-51f9-451f-bc50-eec59096f9cb" \
  --set nabi-cloudflared.applicationSettings.secretName="nabi-prod-tunnel-credentials" \
  --set nabi-cloudflared.applicationSettings.service="https://prod.internal.nabi.hikaru.app:443" \
  --set ingress-nginx.enabled=true \
  --set ingress-nginx.nameOverride="prod-ingress" \
  --set ingress-nginx.controller.service.loadBalancerIP="192.168.0.30" \
  --set ingress-nginx.controller.ingressClassResource.name="nabi-project-nginx" \
  --set ingress-nginx.controller.ingressClassByName=false \
  --set ingress-nginx.controller.ingressClassResource.controllerValue="k8s.io/nabi-project-nginx" \
  --set ingress-nginx.controller.ingressClass="nabi-project-nginx" \
  --set ingress-nginx.controller.ingressClassResource.enabled=true # \
  # --dry-run --debug