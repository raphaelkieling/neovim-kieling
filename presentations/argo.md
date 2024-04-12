# Argo

Tool for managing and deploying Kubernets (K8s) changes based on GitOps.

---

## What is Argo CD?

Argo is a tool to manager Kubernet clusters, workflows and do GitOps right. Argo is a brand with different services. 

The most used one is called `Argo CD`, the goal is to put in the version control everything related with the configuration, definitions and environment files.

---

## What is Kubernetes?

Kubernetes is a container orchestration platform that automates the deployment, scaling and management of containerized applications.

Related to docker, kubernetes is the next step to manage the containers in a more efficient way. Since docker is a tool to create containers, kubernetes is a tool to manage them.

> It was made in Go :)

---

## Why Argo CD?

- Be able to version control everything.
- Avoid to modify the cluster `K8s` directly.
- Have CI/CD pipelines.
- Someone can review the changes before apply them using the PRs. 🌸

---

## How it works?

`Argo CD` is going to watch a repository as we have on `bees-microsservice`, and syncronize every time that you hit Sync button or in the automatic time window that can be defined and configured.

```
[Git Repository] -> [Argo CD] -> [K8s Cluster] -> [App]
```
