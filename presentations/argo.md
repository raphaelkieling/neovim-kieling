# Argo

Tool for managing and deploying Kubernets (K8s) changes based on GitOps.

---

## What is Argo CD?

Argo is a tool to manager Kubernet clusters, workflows and do GitOps right. Argo is a brand with different services. 

The most used one is called `Argo CD`, the goal is to put in the version control everything related with the configuration, definitions and environment files.

---

## Why Argo CD?

- I will be able to version control everything.
- I will avoid to modify the cluster `K8s` directly.
- I can have CI/CD pipelines.
- Someone can review the changes before apply them using the PRs. 🌸

---

## How it works?

`Argo CD` is going to watch a repository as we have on `bees-microsservice`, and syncronize every time that you hit Sync button or in the automatic time window that can be defined and configured.

