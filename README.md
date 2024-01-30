# K3d Developer Environment

> [!IMPORTANT]
> This package should only be used for development and testing purposes. It is not intended for production use and all data is overwritten when the package is re-deployed.

## Pre-requisites

- [Zarf](https://docs.zarf.dev/docs/getting-started#installing-zarf)
- [K3d](https://k3d.io/#installation)
- [Docker](https://docs.docker.com/get-docker/) or [Podman](https://podman.io/getting-started/installation)

### Create Package Manually

```bash
zarf package create -a amd64 . --no-progress --confirm
```

### Deploy Local Package

```bash
zarf package deploy zarf-package-dev-k3d-* --no-progress --confirm
```

### Deploy Remote Package

```bash
zarf package deploy oci://ghcr.io/beholdenkey/zarf-k3d:1.0.0
```

### Remove Package

```bash
k3d cluster delete dev
```

### Arguments

You can set extra k3d args by setting the deploy-time ZARF_VAR_K3D_EXTRA_ARGS. Set Extra k3d args:

```bash
package:
  deploy:
    set:
      k3d_extra_args: "--gpus=1"
```
