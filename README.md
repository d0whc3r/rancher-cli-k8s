# Rancher v2 cli + kubectl
Docker image for rancher cli v2 including kubectl

## Use image

```bash
docker run --rm d0whc3r/rancher-cli rancher -h
```

## Build image

```bash
docker build -t rancher-cli .
```

## Local execution

```bash
docker run --rm rancher-cli rancher -h
```

> Using [rancher cli](https://rancher.com/docs/rancher/v2.x/en/cli/)
