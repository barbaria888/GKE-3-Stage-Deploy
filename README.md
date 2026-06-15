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

---
 # Video Architecture Explaination

<p align="center">
  <a href="https://youtu.be/nob88Grtpwo">
    <img
      src="https://capsule-render.vercel.app/api?type=rounded&height=150&text=Watch%20Pipeline%20Walkthrough%20on%20Youtube▶︎&fontSize=44&fontAlignY=43&fontColor=FFFFFF&animation=fadeIn&desc=GKE-%20Multi%20Stage%20Deployment&descAlignY=69&descSize=17&color=0:F8FAFC,10:E0F2FE,24:BAE6FD,40:93C5FD,58:A5B4FC,74:C4B5FD,88:FDE68A,100:FBCFE8"
      style="
        border-radius:32px;
        box-shadow:
          0 10px 40px rgba(148,163,184,0.18),
          inset 0 1px 1px rgba(255,255,255,0.55),
          inset 0 -1px 1px rgba(255,255,255,0.20);
        border:1px solid rgba(255,255,255,0.32);
      "
    />
  </a>
</p>

### ⚙️ Tech Stack
* GKE
* Cloud Deploy
* Skaffold
* Docker
* Kubernetes

### 🛠️ Important Notes
* Debugged Cloud Deploy pipeline creation and YAML templating issues.
* Resolved cluster context and deployment synchronization issues.
