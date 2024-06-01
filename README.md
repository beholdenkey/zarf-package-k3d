# Forge Package - K3d

The Forge Package for K3d leverages [kcl-lang](https://www.kcl-lang.io/) and [Zarf](https://docs.zarf.dev/) to deploy a local Kubernetes cluster using [K3d](https://k3d.io/). This package is designed to improve the velocity in which additional forge packages can be developed and tested.

## Pre-requisites

### Required

- [Zarf](https://docs.zarf.dev/docs/getting-started#installing-zarf)
- [K3d](https://k3d.io/#installation)
- [Docker](https://docs.docker.com/get-docker/)

### Optional

- [uds-cli](https://github.com/defenseunicorns/uds-cli)
- [Task](https://taskfile.dev/#/installation)

## Usage

### Create Package Manually

```bash
zarf package create -a amd64 . --no-progress --confirm
```

### Deploy Local Package

> [!IMPORTANT]
> This package should only be used for development and testing purposes. It is not intended for production use and all data is overwritten when the package is re-deployed.

```bash
zarf package deploy zarf-package-k3d-* --no-progress --confirm
```

### Deploy Remote Package

```bash
zarf package deploy oci://ghcr.io/beholdenkey/packages/k3d:1.2.0 --no-progress --confirm
```

### Remove Package

```bash
k3d cluster delete dev
```

## Settings

### Arguments

You can set extra k3d args by setting the deploy-time ZARF_VAR_K3D_EXTRA_ARGS. Set Extra k3d args:

```bash
package:
  deploy:
    set:
      k3d_extra_args: "--gpus=1"
```
