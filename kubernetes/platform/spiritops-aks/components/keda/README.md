# KEDA

Installs the KEDA controller, metrics API and admission webhook, including cluster-scoped CRDs and RBAC. Uses the separately reviewed cert-manager component for controller certificates. Secret access is restricted to the installation namespace and custom target kinds are disabled. No application target, Azure permission, event credential or production ScaledObject is created. Review rendered permissions before approval.

The official chart archive checksum and all image digests are verified before code review and again before every plan and Apply. Functional verification creates a restricted temporary namespace with a two-replica cron scaling probe, then verifies its removal. Controller rollout alone is not success.
