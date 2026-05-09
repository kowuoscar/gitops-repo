echo "=== ArgoCD Applications Audit ==="
argocd app list -o json | \
  jq -r '.[] | "\(.metadata.name) | sync:\(.status.sync.status) | health:\(.status.health.status) | rev:\(.status.sync.revision[:7])"'