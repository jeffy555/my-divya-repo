# cert-manager

Upstream: oci://quay.io/jetstack/charts/cert-manager
Version: v1.21.3
License: Apache-2.0

Installs the operator before the custom-resource configuration. The bootstrap issuer is self-signed and is not a public trust issuer. Metrics collection is disabled until a monitoring destination is reviewed. Values preserve upstream defaults except reviewed overrides and immutable image pins.

The component lock records chart archive and rendered-manifest fingerprints, image digests, object ownership, cluster permissions and hooks. The deployment Runner fetches the archive and checks that lock before every plan and Apply. Do not run this root without restoring the verified archive at upstream/chart.tgz.

Verification: controller rollout and CRD readiness, followed by a short-lived self-signed Certificate in a restricted scratch namespace. The namespace is deleted and its removal verified. No private key or certificate body is exported.
