#!/bin/bash

export PROJECT_ID=$(gcloud config get-value project)
export REGION=us-west1

echo "Applying Cloud Deploy Delivery Pipeline and Targets..."
gcloud deploy apply --file=clouddeploy/delivery-pipeline.yaml
gcloud deploy apply --file=clouddeploy/target-test.yaml
gcloud deploy apply --file=clouddeploy/target-staging.yaml
gcloud deploy apply --file=clouddeploy/target-prod.yaml

echo "Building and Pushing Images using Skaffold..."
skaffold build \
--default-repo $REGION-docker.pkg.dev/$PROJECT_ID/web-app \
--file-output artifacts.json

echo "Creating Release in Cloud Deploy..."
gcloud deploy releases create web-app-001 \
--delivery-pipeline web-app \
--build-artifacts artifacts.json \
--source .

echo "Release web-app-001 created."
echo "--------------------------------------------------------"
echo "To promote the release to staging, run:"
echo "  gcloud deploy releases promote --delivery-pipeline web-app --release web-app-001"
echo ""
echo "To approve the rollout to prod, run:"
echo "  gcloud deploy rollouts approve web-app-001-to-prod-0001 --delivery-pipeline web-app --release web-app-001"
