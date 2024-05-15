[package]
name = "chart"
edition = "v0.8.0"
version = "0.0.1"

[dependencies]
k8s_manifests_service_account = { oci = "oci://ghcr.io/kcl-lang/k8s_manifests_service_account", tag = "0.1.0" }
check-container-limits = { oci = "oci://ghcr.io/kcl-lang/check-container-limits", tag = "0.1.0" }
check-container-requests = { oci = "oci://ghcr.io/kcl-lang/check-container-requests", tag = "0.1.0" }
json_merge_patch = { oci = "oci://ghcr.io/kcl-lang/json_merge_patch", tag = "0.1.1" }
k8s = { oci = "oci://ghcr.io/kcl-lang/k8s", tag = "1.29" }
k8s_manifests_containers = { oci = "oci://ghcr.io/kcl-lang/k8s_manifests_containers", tag = "0.1.2" }
