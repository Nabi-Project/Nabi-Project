#!/bin/bash

set -e

initialDir="$(pwd)"
chartDirectory="../helm"

chartName="nabi"
registry="oci://registry.internal.hikaru.app:443/helm-charts"

# Head into the Helm Chart Directory
cd $chartDirectory

# Check that the Chart Version has been Bumped
chartVersion="$(grep "^version: *[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*$" ${chartName}/Chart.yaml | sed -e "s/version://g" -e "s/ //g")"
echo "$chartVersion"
latestVersion="$(cat latest.txt)"
echo "$latestVersion"
if [[ "$chartVersion" == "$latestVersion" ]]; then
  echo "ERROR: Must Update/Bump the Chart Version before pushing a new chart package to the registry"
  echo "INFO: If you wish to overwrite an existing package version in the registry, please perform this operation manually."
  exit 1
fi

# Package Chart
helm package "${chartName}"
packageName="$(find . -type f -iname "${chartName}-${chartVersion}.tgz" | sort -nr | head -1)"
echo "${packageName}"
echo "${chartVersion}" > latest.txt

# Push to Registry
helm push "${packageName}" "${registry}"

# Head Back to Original Dir
cd $initialDir