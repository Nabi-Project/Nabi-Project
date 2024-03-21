@Library('nabi-project-library') _

runNabiPipeline(
  registry: 'registry.internal.hikaru.app:443', 
  chartName: 'nabi', 
  chartAppVersion: "${env.BUILD_TAG}", 
  deployEnv: 'staging', 
  additionalDeployArgs: """\
    --set global.deployConfig.environment="staging" \
    --set global.deployConfig.baseHostName="nabi.hikaru.app" \
    --set global.deployConfig.ingressClassName="nabi-staging-ingress-nginx" \
    --set global.deployConfig.clusterIssuer="letsencrypt-staging-issuer" \
    --set nabi-cloudflared.enabled=true \
    --set nabi-cloudflared.applicationSettings.tunnelUUID="b82e20b6-5623-42f3-b0b6-bd3b66d3980b" \
    --set nabi-cloudflared.applicationSettings.secretName="nabi-staging-tunnel-credentials" \
    --set nabi-cloudflared.applicationSettings.service="https://staging.internal.nabi.hikaru.app:443" \
    --set ingress-nginx.enabled=false
  """,
  chartDependencyVersions: ["nabi-cloudflared": "latest", "nabi-pwa": "latest", "nabi-tts": "latest", "nabi-nlu": "latest"],
  skipBuild: true,
  skipPackage: false,
  skipDeploy: false
)