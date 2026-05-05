#!/bin/bash

export PROJECT_ID=$(gcloud config get-value project)
export REGION=us-west1

gcloud config set compute/region $REGION
gcloud config set deploy/region $REGION

# Enable APIs
gcloud services enable \
container.googleapis.com \
clouddeploy.googleapis.com \
artifactregistry.googleapis.com \
cloudbuild.googleapis.com

# Create Artifact Registry
gcloud artifacts repositories create web-app \
--description="Docker repo" \
--repository-format=docker \
--location=$REGION

# Create Cloud Build bucket
gsutil mb -p $PROJECT_ID gs://${PROJECT_ID}_cloudbuild

# Create clusters
gcloud container clusters create test --region $REGION --num-nodes=1 --async
gcloud container clusters create staging --region $REGION --num-nodes=1 --async
gcloud container clusters create prod --region $REGION --num-nodes=1 --async

echo "Wait for the clusters to be created..."
sleep 120

# Connect Clusters + Namespace
CONTEXTS=("test" "staging" "prod")

for CONTEXT in ${CONTEXTS[@]}
do
  gcloud container clusters get-credentials ${CONTEXT} --region ${REGION}
  kubectl config rename-context gke_${PROJECT_ID}_${REGION}_${CONTEXT} ${CONTEXT}

  kubectl --context ${CONTEXT} apply -f k8s/web-app-namespace.yaml
done

echo "✅ Setup complete"
