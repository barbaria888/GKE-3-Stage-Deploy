#  GKE CI/CD Pipeline with Google Cloud Deploy

Production-style continuous delivery pipeline using:
* Google Kubernetes Engine (GKE)
* Cloud Deploy
* Skaffold
* Artifact Registry
* Cloud Build


### Architecture Diagram
<img width="2816" height="1536" alt="Architecture-diagram" src="https://github.com/user-attachments/assets/f2c112f2-4fac-45f9-a135-089df22e6683" />

---

#### All 3 stage Clusters
<img width="959" height="471" alt="cluster-all-stage" src="https://github.com/user-attachments/assets/4dacc578-158b-409f-b5fe-8921cd5e7cd2" />

---

#### Manual approval
<img width="929" height="406" alt="Image" src="https://github.com/user-attachments/assets/46ad6300-259a-40cc-b8b3-51876b31718a" />

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
