### 🚀 GKE CI/CD Pipeline with Google Cloud Deploy

Production-style continuous delivery pipeline using:
* Google Kubernetes Engine (GKE)
* Cloud Deploy
* Skaffold
* Artifact Registry
* Cloud Build

### 🔁 Pipeline Flow
```
Build → Artifact Registry → Release → Test → Staging → Prod (Approval)
```

### ✨ Features
* Multi-environment deployment (test/staging/prod)
* Automated promotion pipeline
* Manual approval gate for production
* Kubernetes-native deployment
* Cloud Build + Skaffold integration

### ⚙️ Tech Stack
* GKE
* Cloud Deploy
* Skaffold
* Docker
* Kubernetes

### 🛠️ Important Notes
* Debugged Cloud Deploy pipeline creation and YAML templating issues.
* Resolved cluster context and deployment synchronization issues.
