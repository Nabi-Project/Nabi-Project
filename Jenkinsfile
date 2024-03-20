@Library('nabi-project-library') _

runNabiPipeline(
  registry: 'registry.internal.hikaru.app:443', 
  chartName: 'nabi', 
  chartAppVersion: "${env.BUILD_TAG}", 
  deployEnv: 'staging', 
  additionalDeployArgs: """\
    --set global.deployConfig.environment="staging" \
    --set global.deployConfig.ingressClassName="nabi-project-staging-nginx" \
    --set global.deployConfig.clusterIssuer="letsencrypt-issuer" \
    --set nabi-cloudflared.enabled=true \
    --set nabi-cloudflared.applicationSettings.tunnelUUID="b82e20b6-5623-42f3-b0b6-bd3b66d3980b" \
    --set nabi-cloudflared.applicationSettings.secretName="nabi-staging-tunnel-credentials" \
    --set nabi-cloudflared.applicationSettings.service="https://staging.internal.nabi.hikaru.app:443" \
    --set ingress-nginx.enabled=true \
    --set ingress-nginx.nameOverride="staging-ingress" \
    --set ingress-nginx.controller.service.loadBalancerIP="192.168.0.13" \
    --set ingress-nginx.controller.ingressClassResource.name="nabi-project-staging-nginx" \
    --set ingress-nginx.controller.ingressClassResource.controllerValue="k8s.io/nabi-project-staging-nginx" \
    --set ingress-nginx.controller.ingressClass="nabi-project-staging-nginx" \
    --set ingress-nginx.controller.ingressClassResource.enabled=true
  """,
  chartDependencyVersions: ["nabi-cloudflared": "latest", "nabi-pwa": "latest", "nabi-tts": "latest", "nabi-nlu": "latest"],
  skipBuild: true,
  skipPackage: false,
  skipDeploy: true
)